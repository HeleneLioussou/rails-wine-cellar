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

    redirect_to cellar_bouteilles_path
  end

  def destroy
    @bouteille = Bouteille.find(params[:id])
    @bouteille.destroy
  end


  private

  def bouteille_params
    params.require(:bouteille).permit(:millesime, :statut)
  end
end
