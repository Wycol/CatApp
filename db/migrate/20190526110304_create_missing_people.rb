class CreateMissingPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :missing_people do |t|
      t.string :image
      t.string :name
      t.string :lastname
      t.integer :age
      t.integer :gender
      t.timestamps
    end
  end
end
