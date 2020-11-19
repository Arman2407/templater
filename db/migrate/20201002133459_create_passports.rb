class CreatePassports < ActiveRecord::Migration[6.0]
  def change
    create_table :passports, id: :uuid do |t|

      t.timestamps
    end
  end
end
