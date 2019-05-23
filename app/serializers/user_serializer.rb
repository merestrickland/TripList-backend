class UserSerializer < ActiveModel::Serializer
  has_many :trips
  has_many :locations, through: :trips 
  has_many :list_items, through: :trips 
  attributes :id, :first_name, :last_name, :email
end
