class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]


  def index
    if params[:user_id]
      @posts = Post.where(user_id: params[:user_id])
    else
      @posts = Post.all
    end
    render json: @posts, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create
    user = set_user
    @post = user.posts.create!(post_params)
    render json: @post, status: :created
  end

  def update
    @post.update!(post_params)
    render json: @post, status: :ok
  end

  def destroy
    @post.destroy
    head :no_content, status: :ok
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
