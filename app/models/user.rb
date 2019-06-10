class User < ApplicationRecord
    enum tipo: [:Usuario, :Admin, :Invitado]
    enum perfil: [:Médico, :Enfermero, :TES, :Socorrista, :Humanitario, :Psicólogo, :Administrativo, :Mantenimiento]
    has_secure_password
    validates :password, presence: true, on: :create
    has_many :user_resources, dependent: :destroy
    has_many :resources, through: :user_resources
    validates :email, uniqueness: true

    def user_activation
        self.active = true
        self.save
    end

    def user_deactivation
        self.active = false
        self.save
    end
end
