class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home choice]

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
end
