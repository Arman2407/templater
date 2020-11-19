class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts, id: :uuid do |t|
      t.references :accountable, null: false, polymorphic: true, type: :uuid, index: true
      t.boolean :active, default: false
      t.string :bank_name, null: false, default: ""
      t.string :bank_bik, null: false, default: ""
      t.string :kor_account_num, null: false, default: ""
      t.string :account_num, null: false, default: ""

      t.timestamps
    end
  end
end
