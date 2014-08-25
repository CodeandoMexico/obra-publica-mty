class CreateMunicipiosProviders < ActiveRecord::Migration
  def self.up
    create_table :municipios_providers, id: false do |t|
    	t.integer :municipio_id
    	t.integer :provider_id
    end
    #better join speed
    add_index(:municipios_providers, [:municipio_id, :provider_id], :unique => true)
  end

  def self.down
    drop_table :municipios_providers
  end
end
