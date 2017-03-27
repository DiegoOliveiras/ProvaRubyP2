class DentistasController < ApplicationController
  before_action :set_dentista, only: [:show, :edit, :update, :destroy]

  # GET /dentistas
  # GET /dentistas.json
  def index
    @dentistas = Dentista.all
  end

  # GET /dentistas/1
  # GET /dentistas/1.json
  def show
  end

  # GET /dentistas/new
  def new
    @dentista = Dentista.new
  end

  # GET /dentistas/1/edit
  def edit
  end

  def index 
    @dentistas = Dentista.order("nome").paginate(page:params[:page], per_page: 10);
  end

  # POST /dentistas
  # POST /dentistas.json
  def create
    @dentista = Dentista.new(dentista_params)

    respond_to do |format|
      if @dentista.save
        format.html { redirect_to @dentista, notice: 'Dentista was successfully created.' }
        format.json { render :show, status: :created, location: @dentista }
      else
        format.html { render :new }
        format.json { render json: @dentista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dentistas/1
  # PATCH/PUT /dentistas/1.json
  def update
    respond_to do |format|
      if @dentista.update(dentista_params)
        format.html { redirect_to @dentista, notice: 'Dentista was successfully updated.' }
        format.json { render :show, status: :ok, location: @dentista }
      else
        format.html { render :edit }
        format.json { render json: @dentista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dentistas/1
  # DELETE /dentistas/1.json
  def destroy
    @dentista.destroy
    respond_to do |format|
      format.html { redirect_to dentistas_url, notice: 'Dentista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dentista
      @dentista = Dentista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dentista_params
      params.require(:dentista).permit(:nome, :especialidade, :cro, :salario, :rg, :cpf, :nascimento, :telefone, :email, :endereco)
    end
end
