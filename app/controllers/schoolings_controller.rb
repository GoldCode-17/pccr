class SchoolingsController < ApplicationController
  before_action :set_schooling, only: %i[ show edit update destroy ]

  # GET /schoolings or /schoolings.json
  def index
    @schoolings = Schooling.all
  end

  # GET /schoolings/1 or /schoolings/1.json
  def show
  end

  # GET /schoolings/new
  def new
    @schooling = Schooling.new
  end

  # GET /schoolings/1/edit
  def edit
  end

  # POST /schoolings or /schoolings.json
  def create
    @schooling = Schooling.new(schooling_params)

    respond_to do |format|
      if @schooling.save
        format.html { redirect_to schooling_url(@schooling), notice: "Schooling was successfully created." }
        format.json { render :show, status: :created, location: @schooling }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schooling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schoolings/1 or /schoolings/1.json
  def update
    respond_to do |format|
      if @schooling.update(schooling_params)
        format.html { redirect_to schooling_url(@schooling), notice: "Schooling was successfully updated." }
        format.json { render :show, status: :ok, location: @schooling }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schooling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schoolings/1 or /schoolings/1.json
  def destroy
    @schooling.destroy

    respond_to do |format|
      format.html { redirect_to schoolings_url, notice: "Schooling was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schooling
      @schooling = Schooling.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schooling_params
      params.require(:schooling).permit(:level, :description, :percentage)
    end
end
