class DocumentTemplate < ApplicationRecord
  belongs_to :owner, class_name: "User"

  validates :name, presence: true
  validates :doc, presence: true
  has_one_attached :doc

  def to_s
    name
  end
end
