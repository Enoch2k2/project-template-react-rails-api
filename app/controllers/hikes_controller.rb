class HikesController < ApplicationController
  before_action :find_hike, only: [:update, :delete]

  # POST /hikes
  def create
    if logged_in?
      @hike = current_user.hikes.build(hike_params)
      if @hike.save
        render json: @hike, status: 201
      else
        unprocessable_entity_error(@hike)
      end
    else
      you_must_be_logged_in
    end
  end

  # PATCH /hikes/:id
  def update

  end

  # DELETE /hikes/:id
  def destroy

  end

  private
    def hike_params
      params.require(:hike).permit(:review, :location_id)
    end

    def find_hike
      @hike = Hike.find_by_id(params[:id])
    end

end
