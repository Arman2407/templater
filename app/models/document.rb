class Document < ApplicationRecord
  belongs_to :template, class_name: "DocumentTemplate"
  belongs_to :business
  belongs_to :counterparty
  belongs_to :owner, class_name: "User", foreign_key: :owner_id, inverse_of: :documents
end
