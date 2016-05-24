class Api::V3::MaestrosController < ApplicationController

  respond_to :json
   
  # GET /users.json
  def index
   @maestros = Maestro.all
   respond_with(@maestros)
  end
 
  # POST /users.json
  def create
   @maestro = Maestro.new(maestro_params)
   if @maestro.save
    respond_with({'status':'success'})
   else
    respond_with({'status':'error', 'errors':@maestro.errors})
   end
  end
   
  # PATCH/PUT /users/1.json
  def show
    @maestro = Maestro.find(params[:id])
    respond_with(@maestro)
  end
  # DELETE /users/1.json
  def destroy
   @maestro.destroy
   respond_with({'status':'Maestro deleted'})
  end
 
  def user_params
   params.require(:maestro).permit(:nombre_m, :ap_paterno_m, :ap_materno_m, :grado_m, :grupo_m,:telefono_m, :direccion_m)
  end
end






