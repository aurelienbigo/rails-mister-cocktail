class DosesController < ApplicationController
  before_action :set_cocktails, only: [:new, :create]

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

   def new
    @dose = @cocktail.doses.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(dose.cocktail)
  end

  private

  def set_cocktails
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

end


