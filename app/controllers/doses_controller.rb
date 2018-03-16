class DosesController < ApplicationController
  before_action :set_cocktail, except: [ :update, :destroy ]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail
    @dose.save
     if @dose.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def destroy
    @dose_id = Dose.find(params[:id])
    @dose_id.destroy
    redirect_to cocktail_path(@cocktail)
  end


private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def doses_params
    params.require(:dose).permit(:ingredient_id, :description)
  end



end
