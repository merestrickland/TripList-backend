class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }

    has_many :trips
    has_many :list_items, through: trips 
    has_many :locations, through: trips 
end
