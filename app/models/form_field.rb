class FormField < ApplicationRecord
    enum input_type: [:Texto, :Número, :Descripción]
    belongs_to :resource
end
