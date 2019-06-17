class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :missing_people, :complexion, :integer
  end
end
