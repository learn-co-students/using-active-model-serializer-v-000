class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
      #BEFORE using a serializer:
      # render json: @post.to_json(only: [:title, :description, :id],
      #                           include: [author: { only: [:name]}])
       # AFTER USING OUR SERIALIZER
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @author, status: 200 }
      end
  end
end
