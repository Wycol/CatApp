class AddColumnToResources < ActiveRecord::Migration[5.2]
  def change
    change_column :resources, :category, 'integer USING CAST(category AS integer)'
  end
end
