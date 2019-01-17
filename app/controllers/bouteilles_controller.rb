class BouteillesController < ApplicationController
  def index
    @bouteilles = Bouteille.all
  end


  def new
    @cellar = Cellar.find(params[:cellar_id])
    @bouteille = Bouteille.new
  end

  def create
    @bouteille = Bouteille.new(bouteille_params)
    @bouteille.cellar = Cellar.find(params[:cellar_id])
    @bouteille.save

    redirect_to cellar_bouteilles_path
  end

  private

  def bouteille_params
    params.require(:bouteille).permit(:millesime, :statut)
  end
end
