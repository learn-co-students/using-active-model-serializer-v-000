class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
      #BEFORE using a serializer:
      # render json: @post.to_json(only: [:title, :description, :id],
      #                           include: [author: { only: [:name]}])
       # AFTER USING OUR SERIALIZER
       respond_to do |format|
         @post = Post.find(params[:id])
        format.html {render :show}
        format.json { render json: @post, status: 200  }
      end
      # render json: @post, status: 200
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.save
    respond_to do |format|
     format.html { redirect_to post_path(@post) }
     format.json { render json: @post, status: 201  }
    end
     # render json: @post, status: 201
     # post_path(@post)
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  
    respond_to do |format|
     format.html { redirect_to post_path(@post) }
     format.json { render json: @post, status: 202  }
    end
    # render json: @post, status: 202
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
