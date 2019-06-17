class AddExtraFieldsToMissing < ActiveRecord::Migration[5.2]
  def change
    add_column :missing_people, :contact_name, :string
    add_column :missing_people, :relationship, :string
    add_column :missing_people, :phone, :string
  end
end
