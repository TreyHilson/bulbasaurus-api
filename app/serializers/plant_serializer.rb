class PlantSerializer < ActiveModel::Serializer
  attributes :id, :plant_species, :nickname, :facts
end
