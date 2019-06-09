class CreateFormFields < ActiveRecord::Migration[5.2]
  def change
    create_table :form_fields do |t|
      t.belongs_to :resource, index: true
      t.string :value
      t.string :label
      t.string :input_type
      t.timestamps
    end
  end
end
