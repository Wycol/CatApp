class AddMissingpeopleColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :missing_people, :description, :string
    add_column :missing_people, :height, :float
    add_column :missing_people, :weight, :float
    add_column :missing_people, :eye, :integer
    add_column :missing_people, :race, :integer
    add_column :missing_people, :hair, :integer
    add_column :missing_people, :hair_color, :integer






  end
end
