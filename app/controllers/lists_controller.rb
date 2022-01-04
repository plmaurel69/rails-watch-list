class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = Movie.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    @list.save
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
