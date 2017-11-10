class DosesController < ApplicationController
   before_action :find_cocktail, only: [ :new, :create ]

   def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredient = Ingredient.all

  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @ingredients = Ingredient.all
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end
  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)

  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end





