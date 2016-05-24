class Api::V4::EgresadosController < ApplicationController

  respond_to :json
   
  # GET /users.json
  def index
   @egresados = Egresado.all
   respond_with(@egresados)
  end
 
  # POST /users.json
  def create
   @maestro = Egresado.new(egresado_params)
   if @egresado.save
    respond_with({'status':'success'})
   else
    respond_with({'status':'error', 'errors':@egresado.errors})
   end
  end
   
  # PATCH/PUT /users/1.json
  def show
    @egresado = Egresado.find(params[:id])
    respond_with(@egresado)
  end
  # DELETE /users/1.json
  def destroy
   @egresado.destroy
   respond_with({'status':'Egresado deleted'})
  end
 
  def user_params
   params.require(:egresado).permit(:nombre, :ap_paterno, :ap_materno, :sexo, :curp, :fecha_nacimiento, :grado, :grupo, :nombre_tutor, :ap_paterno_tutor, :ap_materno_tutor, :direccion, :telefono)
  end

end
