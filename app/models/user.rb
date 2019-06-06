class User < ApplicationRecord
    enum tipo: [:Usuario, :Trabajador, :Limpiadora]
    has_secure_password
    validates :password, presence: true, allow_nil: true
    has_many :user_resources, dependent: :destroy
    has_many :resources, through: :user_resources
end
