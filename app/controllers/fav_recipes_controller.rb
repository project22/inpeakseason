class FavRecipesController < ApplicationController
  before_action :set_fav_recipe, only: [:show, :edit, :update, :destroy]

  # GET /fav_recipes
  # GET /fav_recipes.json
  def index
    @fav_recipes = FavRecipe.all
  end

  # GET /fav_recipes/1
  # GET /fav_recipes/1.json
  def show
  end

  # GET /fav_recipes/new
  def new
    @fav_recipe = FavRecipe.new
  end

  # GET /fav_recipes/1/edit
  def edit
  end

  # POST /fav_recipes
  # POST /fav_recipes.json
  def create
    @fav_recipe = FavRecipe.new(fav_recipe_params)

    respond_to do |format|
      if @fav_recipe.save
        format.html { redirect_to @fav_recipe, notice: 'Fav recipe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fav_recipe }
      else
        format.html { render action: 'new' }
        format.json { render json: @fav_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fav_recipes/1
  # PATCH/PUT /fav_recipes/1.json
  def update
    respond_to do |format|
      if @fav_recipe.update(fav_recipe_params)
        format.html { redirect_to @fav_recipe, notice: 'Fav recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fav_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fav_recipes/1
  # DELETE /fav_recipes/1.json
  def destroy
    @fav_recipe.destroy
    respond_to do |format|
      format.html { redirect_to fav_recipes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fav_recipe
      @fav_recipe = FavRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fav_recipe_params
      params.require(:fav_recipe).permit(:recipe_id)
    end
end
