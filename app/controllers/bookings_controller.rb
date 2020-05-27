class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_listing, only: [:new, :create]

# CHANGE BOOKING STATUS
# MIGRATION FOR TOTAL PRICE
  def index
    @bookings = policy_scope(Booking.where(user_id: current_user.id))
  end

  def show
    @listing = @booking.listing
    authorize @listing
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "Pending host confirmation"
    @booking.listing = @listing
    @booking.user = current_user
    authorize @listing

    if @booking.check_out && @booking.check_in
      @booking.total_price = (@booking.check_out - @booking.check_in).to_f * @booking.listing.price.to_f
    else
      @booking.total_price = 0
    end

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @booking.status = "Pending host confirmation"
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Listing was successfully updated.'
    else
      render :edit
    end
    # @booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :status, :user_id, :listing_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end
end
