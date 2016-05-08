class Api::V1::AlumnosController < ApplicationController

  respond_to :json
   
  # GET /users.json
  def index
   @alumnos = Alumno.all
   respond_with(@alumnos)
  end
 
  # POST /users.json
  def create
   @alumno = Alumno.new(alumno_params)
   if @alumno.save
    respond_with({'status':'success'})
   else
    respond_with({'status':'error', 'errors':@alumno.errors})
   end
  end
   
  # PATCH/PUT /users/1.json
  def update
   if @alumno.update(alumno_params)
    respond_with({'status':'success'})
   else
    respond_with({'status':'error'})
   end
  end
 
  # DELETE /users/1.json
  def destroy
   @alumno.destroy
   respond_with({'status':'Alumno deleted'})
  end
 
  def user_params
   params.require(:alumno).permit(:nombre, :ap_paterno, :ap_materno, :sexo, :curp, :fecha_nacimiento, :grado, :grupo, :nombre_tutor, :ap_paterno_tutor, :ap_materno_tutor, :direccion, :telefono)
  end

end
