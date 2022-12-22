class LocationsController < ApplicationController


  def create
    @location = Location.new(location_params)
    if @location.save
      render json: @location, status: 201
    else
      render json: { errors: @location.errors.full_messages }, status: 422
    end
  end


  private

    def location_params
      params.require(:location).permit(:trail_name, :city)
    end
end
