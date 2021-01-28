module ApplicationHelper
  def show_edit_post(post)
    link_to 'Edit', edit_post_path(post)
  end

  def show_destroy_post(post)
    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
  end
end
