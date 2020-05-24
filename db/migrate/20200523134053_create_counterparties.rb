class CreateCounterparties < ActiveRecord::Migration[6.0]
  def change
    create_table :counterparties, id: :uuid do |t|
      t.string :company_full_name, null: false, default: ""
      t.string :company_short_name, null: false, default: ""
      t.string :signatory_person, null: false, default: ""
      t.string :signatory_person_genitive, null: false, default: ""
      t.string :signatory_basis, null: false, default: ""
      t.string :signatory_basis_genitive, null: false, default: ""
      t.string :inn, null: false, default: ""
      t.string :kpp, null: false, default: ""
      t.string :ogrn, null: false, default: ""
      t.text :legal_address, null: false, default: ""
      t.text :real_address, null: false, default: ""
      t.text :post_address, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :email, null: false, default: ""
      t.belongs_to :owner, foreign_key: {to_table: :users}, type: :uuid

      t.timestamps
    end
  end
end
