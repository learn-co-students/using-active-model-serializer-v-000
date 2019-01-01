class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    #Found in author_serializer
    render json: @author, status: 200
  end
end
