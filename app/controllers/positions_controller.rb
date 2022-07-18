class PositionsController < ApplicationController
  before_action :set_position, only: %i[show edit update destroy]
  before_action :set_subgroup_options, only: [:new, :create, :edit, :update, :show]

  # GET /positions or /positions.json
  def index
    @positions = Position.all
  end

  # GET /positions/1 or /positions/1.json
  def show; end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit; end

  # POST /positions or /positions.json
  def create
    @position = Position.new(position_params)
    respond_to do |format|
      if @position.save
        format.html { redirect_to position_url(@position), notice: 'Cargo criado com sucesso.' }
        format.json { render :show, status: :created, location: @position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positions/1 or /positions/1.json
  def update
    respond_to do |format|
      if @position.update(position_params)
        format.html { redirect_to position_url(@position), notice: 'Cargo cadastro com sucesso.' }
        format.json { render :show, status: :ok, location: @position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1 or /positions/1.json
  def destroy
    @position.destroy

    respond_to do |format|
      format.html { redirect_to positions_url, notice: 'Cargo destruído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_position
    @position = Position.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def position_params
    params.require(:position).permit(:description, :subgroup_id)
  end

  def set_subgroup_options
    @subgroup_options = Subgroup.all.pluck(:description, :id)
  end

  def set_subgroup
    @subgroup = Subgroup.find_by(id: @position.subgroup_id)
  end
end
