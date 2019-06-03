class Resource < ApplicationRecord
    has_many :user_resources, dependent: :destroy
    has_many :users, through: :user_resources
end
