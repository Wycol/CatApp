class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer 
    add_column :users, :perfil, :integer
    add_column :users, :dni, :string
    add_column :users, :phone, :string


  end
end
