class Obra < ActiveRecord::Base
  belongs_to :municipio
  has_one :provider
end
