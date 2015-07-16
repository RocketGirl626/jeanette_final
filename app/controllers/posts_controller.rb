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

  # def edit
  #   @property = Property.find(params[:id])
  # end
  #
  # def update
  #    @property = Property.find(params[:id])
  #    if @property.update(property_params)
  #      flash[:notice] = "Your property has been updated."
  #      redirect_to property_path(@property)
  #    else
  #      render :edit
  #    end
  #  end
  #
  #  def destroy
  #    @property = Property.find(params[:id])
  #    @property.destroy
  #    flash[:notice] = "Your property has been deleted."
  #    redirect_to properties_path()
  #  end


private
  def post_params
    params.require(:post).permit(:name, :text)
  end

end
