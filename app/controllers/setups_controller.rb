class SetupsController < ApplicationController
  before_action :set_setup, only: [:show, :edit, :update, :destroy]

  # GET /setups
  # GET /setups.json
  def index
    @setups = Setup.all
  end

  # GET /setups/1
  # GET /setups/1.json
  def show
  end

  # GET /setups/new
  def new
    @setup = Setup.new
  end

  # GET /setups/1/edit
  def edit
  end

  # POST /setups
  # POST /setups.json
  def create
    binding.pry
    @setup = Setup.new(setup_params)

    respond_to do |format|
      if @setup.save
        format.html { redirect_to @setup, notice: 'Setup was successfully created.' }
        format.json { render :show, status: :created, location: @setup }
      else
        format.html { render :new }
        format.json { render json: @setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setups/1
  # PATCH/PUT /setups/1.json
  def update
    respond_to do |format|
      if @setup.update(setup_params)
        format.html { redirect_to @setup, notice: 'Setup was successfully updated.' }
        format.json { render :show, status: :ok, location: @setup }
      else
        format.html { render :edit }
        format.json { render json: @setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setups/1
  # DELETE /setups/1.json
  def destroy
    @setup.destroy
    respond_to do |format|
      format.html { redirect_to setups_url, notice: 'Setup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setup
      @setup = Setup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setup_params
      params.require(:setup).permit(:first, :second, :dob)
    end
end
