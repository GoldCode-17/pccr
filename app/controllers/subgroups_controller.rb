class SubgroupsController < ApplicationController

  # GET /subgroups/new
  def new
    @subgroup = Subgroup.new
  end

  # POST /subgroups or subgroups.json
  def create
    @subgroup = Subgroup.new(subgroup_params)

    respond_to do |format|
      if @subgroup.save
        format.html { redirect_to subgroup_url(@subgroup), notice: "A new subgroup was successfully created." }
        format.json { render :show, status: :created, location: @subgroup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def subgroup_params
      params.require(:subgroup).permit(:acronyms, :description)
    end
end