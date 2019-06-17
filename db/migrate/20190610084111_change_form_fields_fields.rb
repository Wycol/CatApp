class ChangeFormFieldsFields < ActiveRecord::Migration[5.2]
  def change
    change_column :form_fields, :input_type, 'integer USING CAST(input_type AS integer)'
    add_column :form_fields, :size, :integer

  end
end
