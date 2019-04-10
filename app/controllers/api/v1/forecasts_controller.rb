module Api
  module V1
    class ForecastsController < ApplicationController
      protect_from_forgery with: :null_session
      respond_to? :json
      def show_weather
        @forecast = Forecast.new(:lat => 14.0754804, :lng => 100.6100677)
        @forecast.save
        @weather = @forecast.get_weather_data
        @current_weather = @weather.currently
        render json: @current_weather
      end
    end
  end
end