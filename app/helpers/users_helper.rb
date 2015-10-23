module UsersHelper
  
  def no_posts?
    if @user.posts.nil?
      "#{@user.name} has not submitted any posts yet!"
    else
      "Posts"
    end
  end
  
  def no_comments?
    if @user.comments.nil?
      "#{@user.name} has not submitted any comments yet!"
    else
      "Comments"
    end
  end
  
  def no_favorites?
    if @user.favorites.nil?
      "#{@user.name} has not favorited any posts yet!"
    else
      "Favorites"
    end
  end
end
