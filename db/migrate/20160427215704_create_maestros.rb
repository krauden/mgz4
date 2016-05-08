class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :nombre_m
      t.string :ap_paterno_m
      t.string :ap_materno_m
      t.string :grado_m
      t.string :grupo_m
      t.string :telefono_m
      t.string :direccion_m

      t.timestamps null: false
    end
  end
end
