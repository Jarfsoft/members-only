module ApplicationHelper
  def show_edit_post(post)
    link_to 'Edit', edit_post_path(post)
  end

  def show_destroy_post(post)
    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
  end

  def show_author_if_logged_in(post)
    if signed_in?
      post.user.email
    else
      'You need to be signed in to see the author.'
    end
  end
end
