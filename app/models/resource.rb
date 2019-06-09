class Resource < ApplicationRecord
    has_many :user_resources, dependent: :destroy
    has_many :users, through: :user_resources
    has_many :form_fields
    accepts_nested_attributes_for :form_fields
end
