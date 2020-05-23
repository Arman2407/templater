FactoryBot.define do
  factory :counterparty do
    company_full_name { "MyString" }
    company_short_name { "MyString" }
    signatory_person { "MyString" }
    signatory_basis { "MyString" }
    inn { "MyString" }
    kpp { "MyString" }
    ogrn { "MyString" }
    legal_address { "MyString" }
    real_address { "MyString" }
    post_address { "MyString" }
    owner { nil }
  end
end
