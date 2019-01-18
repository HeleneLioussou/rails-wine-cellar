class BouteillesController < ApplicationController
  def index
    @bouteilles = Bouteille.all
    @cellar = Cellar.find(params[:cellar_id])
  end


  def new
    @cellar = Cellar.find(params[:cellar_id])
    @bouteille = Bouteille.new
  end

  def create
    @bouteille = Bouteille.new(bouteille_params)
    @bouteille.cellar = Cellar.find(params[:cellar_id])
    @bouteille.vin = Vin.find(params[:bouteille][:vin_id])
    @bouteille.save

    redirect_to cellar_path(params[:cellar_id])
  end


  def edit
    @bouteille = Bouteille.find(params[:id])
    @cellar = Cellar.find(params[:cellar_id])

  end

  def update
    @bouteille = Bouteille.find(params[:id])
    @cellar = Cellar.find(params[:cellar_id])

    @bouteille.update(bouteille_params)
    redirect_to cellar_path(params[:cellar_id])
  end

  def destroy
    @bouteille = Bouteille.find(params[:id])
    cellar = @bouteille.cellar
    @bouteille.destroy
    redirect_to cellar_path(cellar)
  end


  private

  def bouteille_params
    params.require(:bouteille).permit(:millesime, :statut)
  end
end
