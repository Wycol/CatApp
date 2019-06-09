class User < ApplicationRecord
    enum tipo: [:Usuario, :Trabajador, :Limpiadora]
    has_secure_password
    validates :password, presence: true, allow_nil: true
    has_many :user_resources, dependent: :destroy
    has_many :resources, through: :user_resources


    def user_activation
        self.active = true
        self.save
    end

    def user_deactivation
        self.active = false
        self.save
    end
end
