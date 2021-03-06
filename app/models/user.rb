class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :document_templates, inverse_of: :owner, foreign_key: :owner_id
  has_many :businesses, inverse_of: :owner, foreign_key: :owner_id
  has_many :counterparties, inverse_of: :owner, foreign_key: :owner_id
  has_many :documents, inverse_of: :owner, foreign_key: :owner_id

  def to_s
    email
  end
end
