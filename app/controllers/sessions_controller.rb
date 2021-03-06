class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    else
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end
