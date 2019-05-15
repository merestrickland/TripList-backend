class UserSerializer < ActiveModel::Serializer
  has_many :trips
  has_many :locations, through: :trips 
  attributes :id, :first_name, :last_name, :password, :email
end
