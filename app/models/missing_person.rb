class MissingPerson < ApplicationRecord
    enum gender: [:Masculino, :Femenino]
    mount_uploader :image, ImageUploader
end
