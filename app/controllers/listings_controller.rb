class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  def index
    @listings = Listing.all
  end

  def show; end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end


  def listing_params
    params.require(:listing).permit(:name, :photo)
  end
end
