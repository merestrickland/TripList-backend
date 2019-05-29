class Trip < ApplicationRecord
    has_many :list_items
    belongs_to :user
    # belongs_to :location
end
