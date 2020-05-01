class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

    def index
      @cocktails = Cocktail.all

    end

    def show
    end

    def new
      @cocktail = Cocktail.new
    end

    def destroy
      @cocktail.destroy

      # no need for app/views/cocktails/destroy.html.erb
      redirect_to cocktails_path
    end

    def create
      @cocktail = Cocktail.new(cocktail_params)
      @cocktail.save
    # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to cocktail_path(@cocktail)
    end

    def edit
    end

    def update
      @cocktail.update(cocktail_params)

      redirect_to cocktail_path(@cocktail)
    end

    private

    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
      params.require(:cocktail).permit(:name)
    end

end
