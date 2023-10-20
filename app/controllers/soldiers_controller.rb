class SoldiersController < ApplicationController
  before_action :set_soldier, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /soldiers or /soldiers.json
  def index
    @soldiers = Soldier.all
  end

  # GET /soldiers/1 or /soldiers/1.json
  def show
  end

  # GET /soldiers/new
  def new
    @soldier = Soldier.new(user_id: current_user.id)
  end

  # GET /soldiers/1/edit
  def edit
  end

  # POST /soldiers or /soldiers.json
  def create
    @soldier = Soldier.new(soldier_params)

    respond_to do |format|
      if @soldier.save
        format.html { redirect_to soldier_url(@soldier), notice: "Soldier was successfully created." }
        format.json { render :show, status: :created, location: @soldier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soldiers/1 or /soldiers/1.json
  def update
    respond_to do |format|
      if @soldier.update(soldier_params)
        format.html { redirect_to soldier_url(@soldier), notice: "Soldier was successfully updated." }
        format.json { render :show, status: :ok, location: @soldier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soldiers/1 or /soldiers/1.json
  def destroy
    @soldier.destroy

    respond_to do |format|
      format.html { redirect_to soldiers_url, notice: "Soldier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soldier
      @soldier = Soldier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def soldier_params
      params.require(:soldier).permit(:name, :image, :user_id, :galon_id, :dateofbirth)
    end
end
