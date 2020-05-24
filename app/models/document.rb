class Document < ApplicationRecord
  belongs_to :template, class_name: "DocumentTemplate"
  belongs_to :business
  belongs_to :counterparty
  belongs_to :owner, class_name: "User", foreign_key: :owner_id, inverse_of: :documents

  has_one_attached :doc

  def context
    {
      signing_date: signing_date.strftime("%-d %B %Y"),

      # Business
      b_company_full_name: business.company_full_name,
      b_company_short_name: business.company_short_name,
      b_signatory_person: business.signatory_person,
      b_signatory_basis: business.signatory_basis,
      b_inn: business.inn,
      b_kpp: business.kpp,
      b_ogrn: business.ogrn,
      b_legal_address: business.legal_address,
      b_real_address: business.real_address,
      b_post_address: business.post_address,

      # Counterparty
      c_company_full_name: counterparty.company_full_name,
      c_company_short_name: counterparty.company_short_name,
      c_signatory_person: counterparty.signatory_person,
      c_signatory_basis: counterparty.signatory_basis,
      c_inn: counterparty.inn,
      c_kpp: counterparty.kpp,
      c_ogrn: counterparty.ogrn,
      c_legal_address: counterparty.legal_address,
      c_real_address: counterparty.real_address,
      c_post_address: counterparty.post_address
    }
  end
end
