class GalonsController < ApplicationController
  before_action :set_galon, only: %i[ show edit update destroy ]

  # GET /galons or /galons.json
  def index
    @galons = Galon.all
  end

  # GET /galons/1 or /galons/1.json
  def show
  end

  # GET /galons/new
  def new
    @galon = Galon.new
  end

  # GET /galons/1/edit
  def edit
  end

  # POST /galons or /galons.json
  def create
    @galon = Galon.new(galon_params)

    respond_to do |format|
      if @galon.save
        format.html { redirect_to galon_url(@galon), notice: "Galon was successfully created." }
        format.json { render :show, status: :created, location: @galon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @galon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galons/1 or /galons/1.json
  def update
    respond_to do |format|
      if @galon.update(galon_params)
        format.html { redirect_to galon_url(@galon), notice: "Galon was successfully updated." }
        format.json { render :show, status: :ok, location: @galon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @galon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galons/1 or /galons/1.json
  def destroy
    @galon.destroy

    respond_to do |format|
      format.html { redirect_to galons_url, notice: "Galon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galon
      @galon = Galon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def galon_params
      params.require(:galon).permit(:name, :image)
    end
end
