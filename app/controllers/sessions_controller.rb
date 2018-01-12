class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to controller: 'sessions', action: 'new' if session[:name].nil?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
