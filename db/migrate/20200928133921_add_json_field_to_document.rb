class AddJsonFieldToDocument < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :json_fields, :jsonb, default: []
  end
end
