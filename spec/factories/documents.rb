FactoryBot.define do
  factory :document do
    template { nil }
    business { nil }
    counterparty { nil }
    signing_date { "2020-05-23" }
  end
end
