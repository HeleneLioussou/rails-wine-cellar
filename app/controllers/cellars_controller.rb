class CellarsController < ApplicationController

  def index
    @user = current_user

    @cellars = Cellar.all
    @cellar = Cellar.new
  end

  def show
    @cellar = Cellar.find(params[:id])
    @bouteilles = @cellar.bouteilles
  end

  def new
    @cellar = Cellar.new
  end

  def create
    @cellar = Cellar.new(cellar_params)
    @cellar.user = current_user
    @cellar.save

    redirect_to cellars_path
  end

    private

  def cellar_params
    params.require(:cellar).permit(:name)
  end
end
