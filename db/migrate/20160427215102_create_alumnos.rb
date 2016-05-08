class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :ap_paterno
      t.string :ap_materno
      t.string :sexo
      t.string :curp
      t.string :fecha_nacimiento
      t.string :grado
      t.string :grupo
      t.string :nombre_tutor
      t.string :ap_paterno_tutor
      t.string :ap_materno_tutor
      t.string :direccion
      t.string :telefono

      t.timestamps null: false
    end
  end
end
