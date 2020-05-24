class DocumentTemplate < ApplicationRecord
  belongs_to :owner, class_name: "User"

  validates :name, presence: true
  validates :doc_template, presence: true
  has_one_attached :doc_template

  has_many :documents, foreign_key: "template_id", dependent: :destroy, inverse_of: :template

  def to_s
    name
  end
end
