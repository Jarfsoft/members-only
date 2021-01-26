class ApplicationController < ActionController::Base
  def create
    redirect_to root_path
  end
end
