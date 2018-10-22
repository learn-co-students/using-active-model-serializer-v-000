class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end
      # #BEFORE using a serializer:
      # render json: @post.to_json(only: [:title, :description, :id],
      #                           include: [author: { only: [:name]}])
       # AFTER USING OUR SERIALIZER


  def new
    @post = Post.new
  end

  def create
    @author = Author.first_or_create(name: params[:post][:author])
    @post = Post.create(post_params)
    if @post.save
      @post.author = @author
      render json: @post, status: 201
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    render json: @post, status: 202
  end

  def data
    @post = Post.find(params[:id])
    render json: PostSerializer.serialize(@post)
  end


private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
