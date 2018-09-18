class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
    respond_to do |f|
      f.json {render json: @posts, status: 200}
      f.html {render :index}
    end
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |f|
      f.json {render json: @post, status: 200}
      f.html {render :show}
    end

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.save
    render json: @post, status: 201
  end

  def edit
  end

  def update
    @post.update(post_params)
    render json: @post, status: 202
  end

  def post_data
  post = Post.find(params[:id])
  #render json: PostSerializer.serialize(post)
  render json: post.to_json(only: [:title, :description, :id],
                            include: [author: { only: [:name]}])
end

private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
