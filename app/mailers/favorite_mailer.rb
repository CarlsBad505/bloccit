class FavoriteMailer < ApplicationMailer
  default from: "carl@tabrific.com"
  
  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@infinite-mesa-1113.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@infinite-mesa-1113.example>"
    headers["References"] = "<post/#{post.id}@infinite-mesa-1113.example>"
    
    @user = user
    @post = post
    @comment = comment
    
    mail(to: user.email, subject: "New Comment on #{post.title}")
  end
  
  def new_post(user, post)
    headers["Message-ID"] = "<posts/#{post.id}@infinite-mesa-1113.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@infinite-mesa-1113.example>"
    headers["References"] = "<post/#{post.id}@infinite-mesa-1113.example>"
    
    @user = user
    @post = post
    
    mail(to: user.email, subject: "You've Favorited #{post.title}")
  end
end
