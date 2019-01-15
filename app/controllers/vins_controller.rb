class VinsController < ApplicationController

  def index
    @vins = Vin.all
  end


  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
    @vin.save

    redirect_to vins_path
  end

  private

  def vin_params
    params.require(:vin).permit(:categorie, :appellation, :contenance, :couleur, :localite, :domaine)
  end

end
