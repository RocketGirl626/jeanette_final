class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post saved!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
     @post = Post.find(params[:id])
   end

  def edit
    @post = Post.find(params[:id])
  end

  def update
     @post = Post.find(params[:id])
     if @post.update(post_params)
       flash[:notice] = "Your post has been updated."
       redirect_to post_path(@post)
     else
       render :edit
     end
   end

   def destroy
     @post = Post.find(params[:id])
     @post.destroy
     flash[:notice] = "Your post has been deleted."
     redirect_to posts_path()
   end


private
  def post_params
    params.require(:post).permit(:name, :text)
  end

end
