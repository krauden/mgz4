class AlumnosController < ApplicationController 
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]

  # GET /alumnos
  # GET /alumnos.json
  def index
    @alumnos = Alumno.all

    
    #@alumnos = Alumno.where(grado: '1', grupo: 'A')
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
  end

  # GET /alumnos/new
  def new
    @alumno = Alumno.new
  end

  def tutores
    @alumnos = Alumno.all
  end

  def tutor

  end

  def busqueda
      @nombre= params[:nombre]
      @ap_paterno =params[:ap_paterno]
      @ap_materno =params[:ap_materno]

      if params[:nombre]
      @alumnos = Alumno.where(nombre:@nombre,ap_paterno:@ap_paterno,ap_materno:@ap_materno)
      else
      @alumnos = Alumno.all
    end
  end

  def filtro
    @grado_alumno = params[:grado]
    @grupo_alumno = params[:grupo]

    if params[:grado]
      @alumnos = Alumno.where(grado:@grado_alumno,grupo:@grupo_alumno)
    else
      @alumnos = Alumno.all
    end
  end

  # GET /alumnos/1/edit
  def edit
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @alumno = Alumno.new(alumno_params)
    @alumno.nombre=@alumno.nombre.capitalize
    @alumno.ap_paterno=@alumno.ap_paterno.capitalize
    @alumno.ap_materno=@alumno.ap_materno.capitalize
    @alumno.nombre_tutor=@alumno.nombre_tutor.capitalize
    @alumno.ap_paterno_tutor=@alumno.ap_paterno_tutor.capitalize
    @alumno.ap_materno_tutor=@alumno.ap_materno_tutor.capitalize


    respond_to do |format|
      if @alumno.save
        format.html { redirect_to @alumno, notice: 'Alumno registrado correctamente .' }
        format.json { render :show, status: :created, location: @alumno }
      else
        format.html { render :new }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumnos/1
  # PATCH/PUT /alumnos/1.json
  def update
    respond_to do |format|
      if @alumno.update(alumno_params)
        format.html { redirect_to @alumno, notice: 'Registro de Alumno actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @alumno }
      else
        format.html { render :edit }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def destroy
    @alumno.destroy
    respond_to do |format|
      format.html { redirect_to alumnos_url, notice: 'Registro de Alumno eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumno_params
      params.require(:alumno).permit(:nombre, :ap_paterno, :ap_materno, :sexo, :curp, :fecha_nacimiento, :grado, :grupo, :nombre_tutor, :ap_paterno_tutor, :ap_materno_tutor, :direccion, :telefono)
    end







end
