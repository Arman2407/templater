json.extract! business, :id, :company_full_name, :company_short_name, :signatory_person, :signatory_basis, :inn, :kpp, :ogrn, :legal_address, :real_address, :post_address, :owner_id, :created_at, :updated_at
json.url business_url(business, format: :json)
