class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home choice]
  # AT: added to try out geocoding 08/05

  def home
  end

  def choice
    if params[:user_location].present?
      distance = params[:distance].to_i || 5
      @businesses = Business.near(params[:user_location], distance)
      @distances = @businesses.map { |business| Geocoder::Calculations.distance_between(params[:user_location], [business.latitude, business.longitude]) }
    else
      @businesses = []
      @distances = []
    end
  end
end
