class ListItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :img_url
end
