class Maestro < ActiveRecord::Base
	validates :nombre_m, presence: true
	validates :ap_materno_m, presence: true
	validates :ap_paterno_m, presence: true
	validates :direccion_m, presence: true
	validates :grado_m, presence: true
	validates :grupo_m, presence: true
	validates :telefono_m, presence: true,numericality: { only_integer: true }
end
