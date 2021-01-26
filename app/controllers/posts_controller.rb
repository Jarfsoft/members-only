include Devise::Controllers::Helpers

class PostsController < ApplicationController

  before_action :signed_in_user, only: [:new, :create]

  def new
    @post = Post.new
  end

  def index
    @Post = Post.all
  end

  def show; end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to root_path
  end

  private

  def signed_in_user
    unless signed_in?
      redirect_to new_user_session_url
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end


=begin
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end

  def logged_in?
    !current_user.nil?
  end
=end
end
