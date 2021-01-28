module PostsHelper
  def show_posts
    if user_signed_in?
      render 'tweets/profile'
    else
      render 'tweets/trends'
    end
  end

  def show_create_post_link
    if user_signed_in?
      render 'tweets/profile'
    else
      render 'tweets/trends'
    end
  end
end
