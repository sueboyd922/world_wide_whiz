class UsersController < ApplicationController

  def show
  end

  def create
    auth_hash = request.env['omniauth.auth']
    if User.exists?(email: auth_hash[:info][:email])
      user = User.find_by(email: auth_hash[:info][:email])
    else
      user = User.create!(
        first_name: auth_hash[:info][:first_name],
        last_name: auth_hash[:info][:last_name],
        email: auth_hash[:info][:email],
        photo: auth_hash[:info][:image]
      )
    end
    session[:user] = user.id
    redirect_to '/dashboard'
  end


end
