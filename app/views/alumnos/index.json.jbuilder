json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :ap_paterno, :ap_materno, :sexo, :curp, :fecha_nacimiento, :grado, :grupo, :nombre_tutor, :ap_paterno_tutor, :ap_materno_tutor, :direccion, :telefono
  json.url alumno_url(alumno, format: :json)
end
