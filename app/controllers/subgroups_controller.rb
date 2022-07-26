class SubgroupsController < ApplicationController
  before_action :set_subgroup, only: %i[ show edit update destroy ]

  # GET /subgroups or /subgroups.json
  def index
    @subgroups = Subgroup.all

    # filter by acronym
    @subgroups = Subgroup.where("acronym = #{params[:acronym]}") if params[:acronym]
    # filter by description
    @subgroups = Subgroup.where("description = #{params[:description]}") if params[:description]
  end

  # GET /subgroups/1 or /subgroups/1.json
  def show
  end

  # GET /subgroups/new
  def new
    @subgroup = Subgroup.new
  end

  # GET /subgroups/1/edit
  def edit
  end

  # POST /subgroups or subgroups.json
  def create
    @subgroup = Subgroup.new(subgroup_params)

    respond_to do |format|
      if @subgroup.save
        format.html { redirect_to subgroup_url(@subgroup), notice: "Um novo subgrupo foi criado com sucesso." }
        format.json { render :show, status: :created, location: @subgroup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subgroups/1 or /subgroups/1.json
  def update
    respond_to do |format|
      if @subgroup.update(subgroup_params)
        format.html { redirect_to subgroup_url(@subgroup), notice: "O subgrupo foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @subgroup }
      else
        format.html { render :edit, status: :unprocessable_entity}
        format.json { render json: @subgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subgroups1 or /subgroups/1.json
  def destroy
    @subgroup.destroy

    respond_to do |format|
      format.html { redirect_to subgroups_url, notice: "O subgrupo foi excluído com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subgroup
      @subgroup = Subgroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subgroup_params
      params.require(:subgroup).permit(:acronym, :description)
    end
end