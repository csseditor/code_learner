class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from Exception, with: :error_message

  def error_message(e)
    render json: {
      result: "#{e.class}: #{e.message}"
    }
  end
end
