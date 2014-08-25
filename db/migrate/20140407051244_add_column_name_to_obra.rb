class AddColumnNameToObra < ActiveRecord::Migration
  def change
    add_column :obras, :municipio_id, :integer
  end
end
