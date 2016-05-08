class WelcomeController < ApplicationController
  def index
  	@alumnos = Alumno.all
  end
end
