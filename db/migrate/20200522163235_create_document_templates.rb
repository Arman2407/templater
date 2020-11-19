class CreateDocumentTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :document_templates, id: :uuid do |t|
      t.string :name
      t.belongs_to :owner, foreign_key: {to_table: :users}, type: :uuid

      t.timestamps
    end
  end
end
