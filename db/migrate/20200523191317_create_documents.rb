class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.references :template, null: false, foreign_key: {to_table: :document_templates}, type: :uuid
      t.references :business, null: false, foreign_key: true, type: :uuid
      t.references :counterparty, null: false, foreign_key: true, type: :uuid
      t.string :contract_num, null: false, default: ""
      t.date :signing_date
      t.integer :amount_num, null: false, default: 0
      t.string :amount_text, null: false, default: ""
      t.belongs_to :owner, foreign_key: {to_table: :users}, type: :uuid

      t.timestamps
    end
  end
end
