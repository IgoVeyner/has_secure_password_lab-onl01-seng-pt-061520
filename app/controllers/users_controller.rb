class UsersController < ApplicationController
  def new
    # redirects if already logged in
  end

  def create
    @user = User.create(user_params)
    return redirect_to new_user_path unless @user.save
    session[:user_id] = @user.id
    redirect_to home_path
  end

  private 

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end