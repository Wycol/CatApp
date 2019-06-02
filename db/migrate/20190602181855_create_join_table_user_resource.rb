class CreateJoinTableUserResource < ActiveRecord::Migration[5.2]
  def change
    create_table :user_resources do |t|
      t.bigint :user_id
      t.bigint :resource_id

      t.timestamps
    end
  end
end
