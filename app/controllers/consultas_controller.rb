class ConsultasController < ApplicationController
  before_action :set_consulta, only: [:show, :edit, :update, :destroy]

  # GET /consultas
  # GET /consultas.json
  def index
    @consultas = Consulta.all
  end

  # GET /consultas/1
  # GET /consultas/1.json
  def show
  end

  # GET /consultas/new
  def new
    @consulta = Consulta.new
  end

  # GET /consultas/1/edit
  def edit
  end

  def index 
    @pdata = params[:pdata]
    filtro = "1=1"

    if !@pdata.nil? && !@pdata.empty?
      @consultas = Consulta.where(filtro+" and data == '"+@pdata+"'").order("data").paginate(page:params[:page], per_page: 10);
    else
      @consultas = Consulta.order("data").paginate(page:params[:page], per_page: 10);
    end
  end

  def listar
    @consultas = Consulta.all

    respond_to do |format|
      format.html
      format.pdf do
        pdf = ConsultasReport.new(@consultas)
        send_data pdf.render, filename: 'ConsultasListagem.pdf', :width => pdf.bounds.width, type: 'application/pdf', disposition: :inline, :page_size => "A4", :page_layout => :portrait
      end
    end
  end

  # POST /consultas
  # POST /consultas.json
  def create
    @consulta = Consulta.new(consulta_params)

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to @consulta, notice: 'Consulta was successfully created.' }
        format.json { render :show, status: :created, location: @consulta }
      else
        format.html { render :new }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultas/1
  # PATCH/PUT /consultas/1.json
  def update
    respond_to do |format|
      if @consulta.update(consulta_params)
        format.html { redirect_to @consulta, notice: 'Consulta was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulta }
      else
        format.html { render :edit }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultas/1
  # DELETE /consultas/1.json
  def destroy
    @consulta.destroy
    respond_to do |format|
      format.html { redirect_to consultas_url, notice: 'Consulta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta
      @consulta = Consulta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulta_params
      params.require(:consulta).permit(:data, :hora, :dentista_id, :paciente_id)
    end
end
