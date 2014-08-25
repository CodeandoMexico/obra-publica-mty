class Municipio < ActiveRecord::Base
  has_many :obras
  has_and_belongs_to_many :providers
end
