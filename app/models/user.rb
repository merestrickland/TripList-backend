class User < ApplicationRecord
    has_secure_password
    #encrypts my password 
    validates :email, presence: true

    has_many :trips
    has_many :list_items, through: :trips 
    # has_many :locations, through: :trips 
end
