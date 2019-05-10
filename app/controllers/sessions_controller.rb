class SessionsController < ApplicationController
  def new
    if session[:name].present?
      redirect_to root_path
    end
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    if session[:name].present?
      session[:name] = nil
    end
    redirect_to sessions_new_path
  end
end
