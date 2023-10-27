class AbdosController < ApplicationController
  before_action :set_abdo, only: %i[ show edit update destroy ]

  # GET /abdos or /abdos.json
  def index
    @abdos = Abdo.all
  end

  # GET /abdos/1 or /abdos/1.json
  def show
  end

  # GET /abdos/new
  def new
    @abdo = Abdo.new
  end

  # GET /abdos/1/edit
  def edit
  end

  # POST /abdos or /abdos.json
  def create
    @abdo = Abdo.new(abdo_params)

    respond_to do |format|
      if @abdo.save
        format.html { redirect_to entraineajd_url, notice: "Abdo was successfully created." }
        format.json { render :show, status: :created, location: @abdo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abdos/1 or /abdos/1.json
  def update
    respond_to do |format|
      if @abdo.update(abdo_params)
        format.html { redirect_to entraineajd_url, notice: "Abdo was successfully updated." }
        format.json { render :show, status: :ok, location: @abdo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abdos/1 or /abdos/1.json
  def destroy
    @abdo.destroy

    respond_to do |format|
      format.html { redirect_to abdos_url, notice: "Abdo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abdo
      @abdo = Abdo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abdo_params
      params.require(:abdo).permit(:user_id, :exercise_id, :nb)
    end
end
