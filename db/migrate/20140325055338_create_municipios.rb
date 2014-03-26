class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.string :name
      t.float :montoTotal

      t.timestamps
    end
  end
end
