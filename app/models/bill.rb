class Bill < ApplicationRecord
    belongs_to :user
    has_many :items, dependent: :delete_all
end
