class MissingPerson < ApplicationRecord
    enum gender: [:Masculino, :Femenino]
    enum eye: [:Marrón, :Ambar, :Avellana, :Verde, :Azul, :Gris]
    enum race: [:Blanco, :Negro, :Mulato, :Chino, :Indio, :Arabe]
    enum hair: [:Corto, :Largo, :Calvo]
    enum hair_color: [:Castaño, :Moreno, :Rubio, :Pelirrojo, :Canoso]
    enum complexion: [:Delgado, :Media, :Obeso]

    validates :name, :lastname, :age, :gender, :height, :weight, :eye, :race, :hair, :hair_color, :complexion, presence: true


    mount_uploader :image, ImageUploader
end
