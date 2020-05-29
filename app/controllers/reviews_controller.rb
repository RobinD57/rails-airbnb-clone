class ReviewsController < ApplicationController
  before_action :set_listing, only: [:new, :create, :index]
  before_action :set_review, only: [:destroy, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @reviews = policy_scope(Review)
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.listing = @listing
    @review.user = current_user
    authorize @listing
    respond_to do |format|
      if @review.save
        format.html { redirect_to listing_path(@listing, anchor: "review-#{@review.id}") }
        format.json { render :index, status: :created, location: @reviews }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    authorize @review
  end

  def update
    authorize @review
    if @review.update(review_params)
      redirect_to listing_path(@review.listing_id)
    else
      render :edit
    end
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to listing_path(@review.listing_id, anchor: "reviews")
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def review_params
    params.require(:review).permit(:user_id, :content, :rating, :listing_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
