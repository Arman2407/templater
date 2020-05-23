class Business < ApplicationRecord
  belongs_to :owner, class_name: "User"

  validates :company_full_name, presence: true

  def to_s
    company_full_name
  end
end
