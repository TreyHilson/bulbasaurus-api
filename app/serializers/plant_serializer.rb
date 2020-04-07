# frozen_string_literal: true

class PlantSerializer < ActiveModel::Serializer
  attributes :id, :plant_species, :nickname, :facts
  belongs_to :user

end
