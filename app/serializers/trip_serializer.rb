class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :list_items, :location
end
