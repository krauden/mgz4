class Alumno < ActiveRecord::Base
	validates :nombre, presence: true
	validates :ap_paterno, presence: true
	validates :ap_materno, presence: true
	validates :sexo, presence: true
	validates :curp, presence: true, length: { is: 18 }
	validates :fecha_nacimiento, presence: true
	validates :grado, presence: true
	validates :grupo, presence: true
	validates :nombre_tutor, presence: true
	validates :ap_paterno_tutor, presence: true
	validates :ap_materno_tutor, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true,numericality: { only_integer: true }
end
