class CommentsController < ApplicationController 
  def users_comments 
    
	#get all the posts
	posts = Post.all 
	
	#.flatten means to place a sequence of values in one array
	#.map allows me to create a new array based on the previous one
    comments = posts.map(&:comments).flatten 
    
	#in here I will select the comments where the autor is the same of the page parameters, keeping it in an instance variable
	@user_comments = comments.select do |comment| 
      comment.author.username == params[:username] 
    end 
  end 
end 