class CardiosController < ApplicationController
  before_action :set_cardio, only: %i[ show edit update destroy ]

  # GET /cardios or /cardios.json
  def index
    @cardios = Cardio.all
  end

  # GET /cardios/1 or /cardios/1.json
  def show
  end

  # GET /cardios/new
  def new
    @cardio = Cardio.new
  end

  # GET /cardios/1/edit
  def edit
  end

  # POST /cardios or /cardios.json
  def create
    @cardio = Cardio.new(cardio_params)

    respond_to do |format|
      if @cardio.save
        format.html { redirect_to entraineajd_url, notice: "Cardio was successfully created." }
        format.json { render :show, status: :created, location: @cardio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cardio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardios/1 or /cardios/1.json
  def update
    respond_to do |format|
      if @cardio.update(cardio_params)
        format.html { redirect_to entraineajd_url, notice: "Cardio was successfully updated." }
        format.json { render :show, status: :ok, location: @cardio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cardio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardios/1 or /cardios/1.json
  def destroy
    @cardio.destroy

    respond_to do |format|
      format.html { redirect_to cardios_url, notice: "Cardio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardio
      @cardio = Cardio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cardio_params
      params.require(:cardio).permit(:exercise_id, :duree, :user_id)
    end
end
