class WelcomeController < ApplicationController
  def home
    #redirects if not logged in
    @user = User.find_by(id: session[:user_id])
  end
end
