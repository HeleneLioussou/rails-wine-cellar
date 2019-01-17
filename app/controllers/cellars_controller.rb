class CellarsController < ApplicationController

  def index
    @cellars = Cellar.all
  end

  def show
    @cellar = Cellar.find(params[:id])
    @bouteilles = @cellar.bouteilles
  end
end
