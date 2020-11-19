class Counterparty < ApplicationRecord
  include Accountable
  include Ownerable

  has_many :documents, dependent: :destroy

  validates :company_full_name, :company_short_name, presence: true

  def to_s
    company_full_name
  end
end
