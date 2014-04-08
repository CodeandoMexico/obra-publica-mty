class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.string :name
      t.float :monto
      t.string :status
      t.integer :avance
      t.integer :municipio_id 
      t.integer :provider_id 

      t.timestamps
    end
  end
end
