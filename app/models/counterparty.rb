class Counterparty < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :documents, dependent: :destroy

  validates :company_full_name, presence: true

  def to_s
    company_full_name
  end
end
