class UsersController < ApplicationControllerApplicationControlle

  def new
    @user =User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've signed up!"
      session[:user_id] = @user.id
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end