json.array!(@maestros) do |maestro|
  json.extract! maestro, :id, :nombre_m, :ap_paterno_m, :ap_materno_m, :grado_m, :grupo_m, :telefono_m, :direccion_m
  json.url maestro_url(maestro, format: :json)
end
