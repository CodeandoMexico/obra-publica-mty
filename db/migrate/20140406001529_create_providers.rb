class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nombre
      t.float :ganancias
      t.integer :totalObras

      t.timestamps
    end
  end
end
