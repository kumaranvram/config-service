class ScfsController < ApplicationController
  before_action :set_scf, only: [:show, :edit, :update, :destroy]

  # GET /scfs
  # GET /scfs.json
  def index
    @scfs = Scf.all
  end

  # GET /scfs/1
  # GET /scfs/1.json
  def show
  end

  # GET /scfs/new
  def new
    @scf = Scf.new
  end

  # GET /scfs/1/edit
  def edit
  end

  # POST /scfs
  # POST /scfs.json
  def create
    @scf = Scf.new(scf_params)

    respond_to do |format|
      if @scf.save
        format.html { redirect_to @scf, notice: 'Scf was successfully created.' }
        format.json { render :show, status: :created, location: @scf }
      else
        format.html { render :new }
        format.json { render json: @scf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scfs/1
  # PATCH/PUT /scfs/1.json
  def update
    respond_to do |format|
      if @scf.update(scf_params)
        format.html { redirect_to @scf, notice: 'Scf was successfully updated.' }
        format.json { render :show, status: :ok, location: @scf }
      else
        format.html { render :edit }
        format.json { render json: @scf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scfs/1
  # DELETE /scfs/1.json
  def destroy
    @scf.destroy
    respond_to do |format|
      format.html { redirect_to scfs_url, notice: 'Scf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scf
      @scf = Scf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scf_params
      params.require(:scf).permit(:name, :description)
    end
end
