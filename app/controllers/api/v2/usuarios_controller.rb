class Api::V2::UsuariosController < ApplicationController

 respond_to :json
   
  # GET /users.json
  def index
   @usuarios = Usuario.all
   respond_with(@usuarios)
  end
 
  # POST /users.json
  def create
   @usuario = Usuario.new(usuario_params)
   if @usuario.save
    respond_with({'status':'success'})
   else
    respond_with({'status':'error', 'errors':@usuario.errors})
   end
  end
   
  # PATCH/PUT /users/1.json
  def show
  	@nombre = params[:username]
   	@usuario = Usuario.where(username:@nombre)
    respond_with(@usuario)
  end
  # DELETE /users/1.json
  def destroy
   @usuario.destroy
   respond_with({'status':'Usuario deleted'})
  end
 
  def user_params
   params.require(:usuario).permit(:username, :password)
  end

end
