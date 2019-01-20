class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])

         respond_to do |format|
      format.html  {render :show }
      format.json {render json:  @author , status: 200}
    end
  end
end