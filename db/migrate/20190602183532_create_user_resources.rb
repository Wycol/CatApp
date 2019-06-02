class CreateUserResources < ActiveRecord::Migration[5.2]
  def change
    create_table :user_resources do |t|

      t.timestamps
    end
  end
end
