class PlantsController < OpenReadController
  before_action :set_plant, only: %i[show update destroy]

  # GET /plants
  def index
    @plants = current_user.plants.all

    render json: @plants
  end

  # GET /plants/1
  def show
    render json: @plant
  end

  # POST /plants
  def create
    @plant = current_user.plants.build(plant_params)

    if @plant.save
      render json: @plant, status: :created
    else
    render json: @plant.errors, status: :unprocessable_entity

    end
  end

  # PATCH/PUT /plants/1
  def update
    if @plant.update(plant_params)
      render json: @plant
    else
      render json: @plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plants/1
  def destroy
    @plant.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_plant
    @plant = current_user.plants.find(params[:id])

  end

  # Only allow a trusted parameter "white list" through.
  def plant_params
  params.require(:plant).permit(:plant_species, :nickname, :facts)
  end
end
