class KeywordsController < ApplicationController
  def index

    if session[:id]
      @keywords = Keyword.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @keywords }
      end
    else
      flash[:error] = "You will need to Sign In to view this page."
      redirect_to :controller => 'system', :action => 'index'
    end
  end

  def show
    @keyword = Keyword.find(params[:id])
  end

  def new

  end

  def create 
    @keyword = Keyword.new(params[:keyword])
    @keyword.save
    redirect_to keywords_path
  end

  def destroy
    @keyword = Keyword.find(params[:id])
    @keyword.destroy
    redirect_to keywords_path
  end
  
end