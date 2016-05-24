class EgresadosController < ApplicationController
  before_action :set_egresado, only: [:show, :edit, :update, :destroy]

  # GET /egresados
  # GET /egresados.json
  def index
    
    @egresados = Egresado.all
  end

  def graduar
    
    #Alumnos de 6 se graduan, cambian de tabla Alumnos a tabla Egresados
      @graduados6 = Alumno.where(grado:'6')
      @graduados6.each do |alumno|
      @alumno_egresado=Egresado.create(nombre:alumno.nombre, ap_paterno:alumno.ap_paterno, ap_materno:alumno.ap_materno, sexo:alumno.sexo, curp:alumno.curp,fecha_nacimiento:alumno.fecha_nacimiento, grado:alumno.grado, grupo:alumno.grupo, nombre_tutor:alumno.nombre_tutor, ap_paterno_tutor:alumno.ap_paterno_tutor, ap_materno_tutor:alumno.ap_materno_tutor, direccion:alumno.direccion, telefono:alumno.telefono)
      @alumno_egresado.save
      end
      Alumno.where(grado:'6').destroy_all
      
    #Alumnos pasan de 5 a 6 grado
      @alumnos5 = Alumno.where(grado:'5')
      @alumnos5.update_all(grado:'6')

    #Alumnos pasan de 4 a 5 grado
      @alumnos4 = Alumno.where(grado:'4')
      @alumnos4.update_all(grado:'5')

    #Alumnos pasan de 3 a 4 grado
      @alumnos3 = Alumno.where(grado:'3')
      @alumnos3.update_all(grado:'4')


    #Alumnos pasan de 2 a 3 grado
      @alumnos2 = Alumno.where(grado:'2')
      @alumnos2.update_all(grado:'3')

    #Alumnos pasan de 1 a 2 grado
      @alumnos1 = Alumno.where(grado:'1')
      @alumnos1.update_all(grado:'2')

    respond_to do |format|
      format.html { redirect_to egresados_url, notice: 'Se ha realizado el egreso de los alumnos correctamente' }
    end
  end

  # GET /egresados/1
  # GET /egresados/1.json
  def show
  end

  # GET /egresados/new
  def new
    @egresado = Egresado.new
  end

  # GET /egresados/1/edit
  def edit
  end

  # POST /egresados
  # POST /egresados.json
  def create
    @egresado = Egresado.new(egresado_params)

    respond_to do |format|
      if @egresado.save
        format.html { redirect_to @egresado, notice: 'Egresado was successfully created.' }
        format.json { render :show, status: :created, location: @egresado }
      else
        format.html { render :new }
        format.json { render json: @egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egresados/1
  # PATCH/PUT /egresados/1.json
  def update
    respond_to do |format|
      if @egresado.update(egresado_params)
        format.html { redirect_to @egresado, notice: 'Egresado was successfully updated.' }
        format.json { render :show, status: :ok, location: @egresado }
      else
        format.html { render :edit }
        format.json { render json: @egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egresados/1
  # DELETE /egresados/1.json
  def destroy
    @egresado.destroy
    respond_to do |format|
      format.html { redirect_to egresados_url, notice: 'Egresado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egresado
      @egresado = Egresado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egresado_params
      params.require(:egresado).permit(:nombre, :ap_paterno, :ap_materno, :sexo, :curp, :fecha_nacimiento, :grado, :grupo, :nombre_tutor, :ap_paterno_tutor, :ap_materno_tutor, :direccion, :telefono)
    end
end
