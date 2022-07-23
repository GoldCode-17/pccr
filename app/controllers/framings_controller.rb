class FramingsController < ApplicationController
  before_action :set_framing, only: %i[ show edit update destroy ]

  # GET /framings or /framings.json
  def index
    @framings = Framing.all
  end

  # GET /framings/1 or /framings/1.json
  def show
  end

  # GET /framings/new
  def new
    @framing = Framing.new
  end

  # GET /framings/1/edit
  def edit
  end

  # POST /framings or /framings.json
  def create
    @framing = Framing.new(framing_params)

    respond_to do |format|
      if @framing.save
        format.html { redirect_to framing_url(@framing), notice: "Framing was successfully created." }
        format.json { render :show, status: :created, location: @framing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @framing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /framings/1 or /framings/1.json
  def update
    respond_to do |format|
      if @framing.update(framing_params)
        format.html { redirect_to framing_url(@framing), notice: "Framing was successfully updated." }
        format.json { render :show, status: :ok, location: @framing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @framing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /framings/1 or /framings/1.json
  def destroy
    @framing.destroy

    respond_to do |format|
      format.html { redirect_to framings_url, notice: "Framing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_framing
      @framing = Framing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def framing_params
      params.require(:framing).permit(:service_time, :position)
    end
end
