class PagesController < ApplicationController
  def home
    @listings = Listing.all
  end
end
