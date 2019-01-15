class CavesController < ApplicationController

  def index
    @caves = Cave.all
  end

  def show
    @cave = Cave.find(params[:id])
  end

    private

  def cave_params
    params.require(:cave).permit(:name)
  end

end
