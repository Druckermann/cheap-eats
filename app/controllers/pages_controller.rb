class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home choice]
  # AT: added to try out geocoding 08/05
  before_action :business_list, only: [:choice]

  def home
  end

  def choice
    @businesses = Business.all
    @markers = @businesses.geocoded.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { business: business })
      }
    end
  end

  def business_list
    @melbourne_location = Geocoder.search('Melbourne, VIC, Australia').first
    @targeted_businesses = Business.near([@melbourne_location.latitude, @melbourne_location.longitude], 5, units: :km)
    puts "Melbourne location: lat=#{@melbourne_location.latitude}, lng=#{@melbourne_location.longitude}"
  end
end
