class Location < ApplicationRecord
    has_many :trips
    has_many :list_items
end
