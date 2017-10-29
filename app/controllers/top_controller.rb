class TopController < ApplicationController
  def index
    # @restaurants = Restaurant.all.includes(:pref, :category)
    @restaurants = Restaurant.search(params)
  end
end
