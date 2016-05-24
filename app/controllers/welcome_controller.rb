class WelcomeController < ApplicationController
  def index

    @num_alumnos = Alumno.all
    @alumnos6 = Alumno.where(grado:'6')

    @total_alumnos = @num_alumnos.count
    @alumnos_en6 = @alumnos6.count
    @porcentaje6 = ((@alumnos6.count.to_f / @total_alumnos)*100).round(2)


  	@usuario= params[:user]
  	@pass= params[:password]
  	if params[:user] == "krauden"
  			@sesion = true
  		else
  			@sesion = false
  	end
  end
end
