class User < ApplicationRecord
    has_secure_password
    validates :password, presence: true
    has_many :user_resources, dependent: :destroy
    has_many :resources, through: :user_resources
end
