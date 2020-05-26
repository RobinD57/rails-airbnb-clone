class PagesController < ApplicationController
  def home
   # skip_before_action :authenticate_user!, only: :home, :new, :create
  end
end
