class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :location
  attributes :id, name
end
