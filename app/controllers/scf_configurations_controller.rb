class ScfConfigurationsController < ApplicationController
  before_action :set_scf_configuration, only: [:show, :edit, :update, :destroy]

  # GET /scf_configurations
  # GET /scf_configurations.json
  def index
    @scf_configurations = ScfConfiguration.all
  end

  # GET /scf_configurations/1
  # GET /scf_configurations/1.json
  def show
  end

  # GET /scf_configurations/new
  def new
    @scf_configuration = ScfConfiguration.new
  end

  # GET /scf_configurations/1/edit
  def edit
  end

  # POST /scf_configurations
  # POST /scf_configurations.json
  def create
    @scf_configuration = ScfConfiguration.new(scf_configuration_params)

    respond_to do |format|
      if @scf_configuration.save
        format.html { redirect_to @scf_configuration, notice: 'Scf configuration was successfully created.' }
        format.json { render :show, status: :created, location: @scf_configuration }
      else
        format.html { render :new }
        format.json { render json: @scf_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scf_configurations/1
  # PATCH/PUT /scf_configurations/1.json
  def update
    respond_to do |format|
      if @scf_configuration.update(scf_configuration_params)
        format.html { redirect_to @scf_configuration, notice: 'Scf configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @scf_configuration }
      else
        format.html { render :edit }
        format.json { render json: @scf_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scf_configurations/1
  # DELETE /scf_configurations/1.json
  def destroy
    @scf_configuration.destroy
    respond_to do |format|
      format.html { redirect_to scf_configurations_url, notice: 'Scf configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def configuration_for_client
    @scf_configurations = ScfConfiguration.where({:client_id => params[:client_id]})
    respond_to do |format|
      format.json {render json: @scf_configurations, status: :ok}
      format.html {render :list}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scf_configuration
      @scf_configuration = ScfConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scf_configuration_params
      params.require(:scf_configuration).permit(:client_id, :scf_id, :value)
    end

    def scfs
      @scfs = Scf.all
    end

    def clients
      @scfs = Client.all
    end
end
