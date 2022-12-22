class ApplicationController < ActionController::API
  include ActionController::Cookies

  def logged_in? # return either true or false
    !!session[:user_id]
  end

  def current_user
    @current_user = User.find_by_id(session[:user_id]) if logged_in?
  end

  def must_be_logged_in
    render json: {errors: ["You must be logged in!"]}
  end

  def unprocessable_entity_error(object)
    render json: { errors: object.errors.full_messages }, status: 422
  end

end
