class PetFoodsController < ApplicationController
  before_action :set_pet_food, only: %i[ show edit update destroy ]

  # GET /pet_foods or /pet_foods.json
  def index
    @pet_foods = PetFood.all
  end

  # GET /pet_foods/1 or /pet_foods/1.json
  def show
  end

  # GET /pet_foods/new
  def new
    @pet_food = PetFood.new
  end

  # GET /pet_foods/1/edit
  def edit
  end

  # POST /pet_foods or /pet_foods.json
  def create
    @pet_food = PetFood.new(pet_food_params)

    respond_to do |format|
      if @pet_food.save
        format.html { redirect_to @pet_food, notice: "Pet food was successfully created." }
        format.json { render :show, status: :created, location: @pet_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_foods/1 or /pet_foods/1.json
  def update
    respond_to do |format|
      if @pet_food.update(pet_food_params)
        format.html { redirect_to @pet_food, notice: "Pet food was successfully updated." }
        format.json { render :show, status: :ok, location: @pet_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_foods/1 or /pet_foods/1.json
  def destroy
    @pet_food.destroy
    respond_to do |format|
      format.html { redirect_to pet_foods_url, notice: "Pet food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_food
      @pet_food = PetFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_food_params
      params.require(:pet_food).permit(:name, :price)
    end
end
