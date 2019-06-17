class User < ApplicationRecord
    enum tipo: [:Usuario, :Admin, :Invitado]
    enum perfil: [:Médico, :Enfermero, :TES, :Socorrista, :Humanitario, :Psicólogo, :Administrativo, :Mantenimiento]
    has_secure_password
    validates :password, presence: true, on: :create
    has_many :user_resources, dependent: :destroy
    has_many :resources, through: :user_resources
    validates :email, uniqueness: true
    validates :name, presence: true
    #validates :dni, presence: true, length: { is: 9 }

    def user_activation
        self.active = true
        self.save
    end

    def user_deactivation
        self.active = false
        self.save
    end

    def set_token
      self.auth_token = generate_token
      save
    end
  
    def generate_token
      loop do
        token = SecureRandom.hex(10)
        break token unless User.where(auth_token: token).exists?
      end
    end
end
