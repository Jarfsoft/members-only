class SessionsController < ActionController::Base
  def create
    redirect_to root_path
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
