class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    respond_to do |f|
      f.html { render :index }
      f.json { render json: @author }
    end
  end
end
