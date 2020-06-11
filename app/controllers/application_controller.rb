class ApplicationController < ActionController::API
protect_from_forgery with :exception
helper_method :current_user

  def current_user
    if session[:user_id] 
      @current_user = User.find(session[:user_id])
    end
  end

  def authorize
    if !current_user
      message = "you arent authorized to call this endpoint"
    end
  end
end