class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @author}
    end
  end
end
