class LinksController < ApplicationController
  def index
    @links = Link.recent_first
  end

  def create
    @links = Link.new(links_params)
    if @links.save
      redirect_to root_path
    else
      index
      render :index, status: :unprocessable_entity
    end
  end

  private

  def links_params
    params.require(:link).permit(:url)
  end
end
