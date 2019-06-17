class Resource < ApplicationRecord
    enum category: [:Hospital, :Albergue, :PMA, :Ambulancia, :VIR, :Vehículo, :Otros]
    
    validates :name, presence: true
    validates :localization, presence: true
    validates :category, presence: true
    
    has_many :user_resources, dependent: :destroy
    has_many :users, through: :user_resources
    has_many :form_fields, dependent: :destroy
    accepts_nested_attributes_for :form_fields
end
