class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by_omniauth(auth)
    session[:id] = @user.id
    binding.pry
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
