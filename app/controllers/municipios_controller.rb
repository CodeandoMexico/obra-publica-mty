class MunicipiosController < ApplicationController
  before_action :set_municipio, only: [:show, :edit, :update, :destroy]

  # GET /municipios
  # GET /municipios.json
  def index
    @municipios = Municipio.all
    @proveedors = Provider.all
    @obras = Obra.all
  end

  # GET /municipios/1
  # GET /municipios/1.json
  def show
  end

  # GET /municipios/new
  def new
    @municipio = Municipio.new
  end

  # GET /municipios/1/edit
  def edit
  end

  # POST /municipios
  # POST /municipios.json
  def create
    @municipio = Municipio.new(municipio_params)

    respond_to do |format|
      if @municipio.save
        format.html { redirect_to @municipio, notice: 'Municipio was successfully created.' }
        format.json { render action: 'show', status: :created, location: @municipio }
      else
        format.html { render action: 'new' }
        format.json { render json: @municipio.errors, status: :unprocessable_entity }
      end
    end
  end


  def showProv
    @municipio = Municipio.find(params[:id])
    @prov = Provider.where(:municipio_id => params[:id])
  end

  def showObra
    @municipio = Municipio.find(params[:id])
    @obras = Obra.where(:municipio_id => params[:id])
  end

  # PATCH/PUT /municipios/1
  # PATCH/PUT /municipios/1.json
  def update
    respond_to do |format|
      if @municipio.update(municipio_params)
        format.html { redirect_to @municipio, notice: 'Municipio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @municipio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /municipios/1
  # DELETE /municipios/1.json
  def destroy
    @municipio.destroy
    respond_to do |format|
      format.html { redirect_to municipios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municipio
      @municipio = Municipio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def municipio_params
      params.require(:municipio).permit(:name)
    end
end
