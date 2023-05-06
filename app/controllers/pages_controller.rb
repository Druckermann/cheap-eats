class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home choice]

  def home
  end

  def choice
    @businesses = Business.all
    @markers = @businesses.geocoded.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude
      }
    end
  end
end
