class Provider < ActiveRecord::Base
  has_many :obras
  has_and_belongs_to_many :municipios
end
