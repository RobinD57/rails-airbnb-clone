class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @listings = Listing.all
  end

  def show; end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:name, :address, :price, :listing_type, :capacity)
  end
end
