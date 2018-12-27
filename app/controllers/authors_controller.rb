class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    respond_to do |format|
		format.html {render :show}
		format.json {render :json: @author}
	end
  end

   def create
    @author = Author.create(author_params)
    @author.save
    render json: @author, status: 201
  end

   def update
    @author.update(author_params)
    render json: @author, status: 202
  end

  def new
    @author = Author.new
  end

  private

	  def author_params
    	params.require(:author).permit(:name, :hometown)
	  end
end
