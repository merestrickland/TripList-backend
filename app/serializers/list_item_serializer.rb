class ListItemSerializer < ActiveModel::Serializer
  belongs_to :trip
  belongs_to :user
  attributes :id, :name, :description, :image_url
end
