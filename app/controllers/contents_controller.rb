class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end
  
  def new
    @content = Content.new
  end

  def create
    Content.create(content_params)
    redirect_to action: :index
  end

  def edit
    content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    content.update(content_params)
    redirect_to action: :index
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to action: :index
  end

  private
    def content_params
      params.require(:content).permit(:time, :detail, :yen, :buy_or_sell, :user_id)
    end
end
