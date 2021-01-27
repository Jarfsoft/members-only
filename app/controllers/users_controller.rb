class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @User = Post.all
  end

  def show; end

  def create
    @user = User.new(user_params)
    @user.password_confirmation = params[:user][:password]
    if @user.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def user_params
    #Whitelisting for strong parameters
    params.require(:user).permit(:name, :email, :password)
  end
end
