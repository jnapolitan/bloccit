module UsersHelper
  def no_posts_or_comments_or_favorites?(user)
    user.posts.count == 0 && user.comments.count == 0 && user.favorites.count == 0
  end
end
