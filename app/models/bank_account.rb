class BankAccount < ApplicationRecord
  belongs_to :accountable, polymorphic: true
  scope :active_one, -> { find_by(active: true) }
end
