module PostsHelper
  def show_create_post_link
    link_to 'Create a Post', new_post_path if user_signed_in?
  end
end
