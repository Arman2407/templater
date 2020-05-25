class Document < ApplicationRecord
  include Ownerable

  belongs_to :template, class_name: "DocumentTemplate"
  belongs_to :business
  belongs_to :counterparty

  has_one_attached :doc

  def context
    b_context =
      {
        # Business
        b_company_full_name: business.company_full_name,
        b_company_short_name: business.company_short_name,
        b_signatory_person: business.signatory_person,
        b_signatory_person_gen: business.signatory_person_genitive,
        b_signatory_basis: business.signatory_basis,
        b_signatory_basis_gem: business.signatory_basis_genitive,
        b_inn: business.inn,
        b_kpp: business.kpp,
        b_ogrn: business.ogrn,
        b_legal_address: business.legal_address,
        b_real_address: business.real_address,
        b_post_address: business.post_address,
        b_phone: business.phone,
        b_email: business.email
      }

    b_bank_accounts = business.bank_accounts
    b_bank_active_account = b_bank_accounts.present? ? b_bank_accounts.active_one : nil

    b_bank_context =
      {
        b_bank_name: b_bank_active_account.present? ? b_bank_active_account.bank_name : nil,
        b_bank_bik: b_bank_active_account.present? ? b_bank_active_account.bank_bik : nil,
        b_bank_kor_account_num: b_bank_active_account.present? ? b_bank_active_account.kor_account_num : nil,
        b_bank_account_num: b_bank_active_account.present? ? b_bank_active_account.account_num : nil
      }

    b_context.merge! b_bank_context

    c_context =
      {
        # Counterparty
        c_company_full_name: counterparty.company_full_name,
        c_company_short_name: counterparty.company_short_name,
        c_signatory_person: counterparty.signatory_person,
        c_signatory_person_gen: counterparty.signatory_person_genitive,
        c_signatory_basis: counterparty.signatory_basis,
        c_signatory_basis_gen: counterparty.signatory_basis_genitive,
        c_inn: counterparty.inn,
        c_kpp: counterparty.kpp,
        c_ogrn: counterparty.ogrn,
        c_legal_address: counterparty.legal_address,
        c_real_address: counterparty.real_address,
        c_post_address: counterparty.post_address,
        c_phone: counterparty.phone,
        c_email: counterparty.email
      }

    c_bank_accounts = counterparty.bank_accounts
    c_bank_active_account = c_bank_accounts.present? ? c_bank_accounts.active_one : nil

    c_bank_context =
      {
        c_bank_name: c_bank_active_account.present? ? c_bank_active_account.bank_name : nil,
        c_bank_bik: c_bank_active_account.present? ? c_bank_active_account.bank_bik : nil,
        c_bank_kor_account_num: c_bank_active_account.present? ? c_bank_active_account.kor_account_num : nil,
        c_bank_account_num: c_bank_active_account.present? ? c_bank_active_account.account_num : nil
      }

    c_context.merge! c_bank_context

    main_context = {
      contract_num: contract_num,
      signing_date: signing_date.strftime("%d.%m.%Y"),
      amount_num: amount_num,
      amount_text: amount_text
    }

    main_context.merge! b_context
    main_context.merge! c_context
  end
end
