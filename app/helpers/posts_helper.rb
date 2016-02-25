module PostsHelper
  def user_is_admin?
    current_user && current_user.admin?
  end

  def user_is_moderator?
    current_user && current_user.moderator?
  end

  def user_is_owner?
    current_user == @post.user
  end

end
