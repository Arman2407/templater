FactoryBot.define do
  factory :bank_account do
    accountable { nil }
    active { false }
    bank_name { "MyString" }
    bank_bik { "MyString" }
    kor_account { "MyString" }
    account { "MyString" }
  end
end
