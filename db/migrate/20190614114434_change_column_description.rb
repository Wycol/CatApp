class ChangeColumnDescription < ActiveRecord::Migration[5.2]
  def change
    change_column :missing_people, :description, :text
  end
end
