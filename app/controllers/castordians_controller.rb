class CastordiansController < ApplicationController
  before_action :set_castordian, only: %i[ show edit update destroy ]

  # GET /castordians or /castordians.json
  def index
    @castordians = Castordian.all
  end

  # GET /castordians/1 or /castordians/1.json
  def show
  end

  # GET /castordians/new
  def new
    @castordian = Castordian.new
  end

  # GET /castordians/1/edit
  def edit
  end

  # POST /castordians or /castordians.json
  def create
    @castordian = Castordian.new(castordian_params)

    respond_to do |format|
      if @castordian.save
        format.html { redirect_to castordian_url(@castordian), notice: "Castordian was successfully created." }
        format.json { render :show, status: :created, location: @castordian }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @castordian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /castordians/1 or /castordians/1.json
  def update
    respond_to do |format|
      if @castordian.update(castordian_params)
        format.html { redirect_to castordian_url(@castordian), notice: "Castordian was successfully updated." }
        format.json { render :show, status: :ok, location: @castordian }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @castordian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castordians/1 or /castordians/1.json
  def destroy
    @castordian.destroy

    respond_to do |format|
      format.html { redirect_to castordians_url, notice: "Castordian was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castordian
      @castordian = Castordian.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def castordian_params
      params.require(:castordian).permit(:staff_id, :role, :duty_time, :meta)
    end
end
