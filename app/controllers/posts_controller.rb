class PostsController < ApplicationController

before_action :authenticate_user!


 def index
  @posts = Post.all
 end

 def new
  @post = Post.new
 end

 def create
  @post = Post.new(post_params)
   if @post.save
     redirect_to posts_path
   else
     render :new
   end
 end

 def edit
 @post = Post.find(params[:id])
 end

 def update
   @post = Post.find(params[:id])
   @post.update(post_params)
   redirect_to posts_path
 end

 def destroy
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to posts_path
 end



 private
 def post_params
   params.require(:post).permit(:user_name, :class_type, :level,
   :comment)
 end


end
