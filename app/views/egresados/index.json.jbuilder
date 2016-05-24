json.array!(@egresados) do |egresado|
  json.extract! egresado, :id, :nombre, :ap_paterno, :ap_materno, :sexo, :curp, :fecha_nacimiento, :grado, :grupo, :nombre_tutor, :ap_paterno_tutor, :ap_materno_tutor, :direccion, :telefono
  json.url egresado_url(egresado, format: :json)
end
