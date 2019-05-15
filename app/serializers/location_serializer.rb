class LocationSerializer < ActiveModel::Serializer
  has_many :trips
  attributes :id, :name, :coordinates
end
