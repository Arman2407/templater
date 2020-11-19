require "rails_helper"

RSpec.describe "bank_accounts/index", type: :view do
  before do
    assign(:bank_accounts, [
      BankAccount.create!(
        accountable: nil,
        active: false,
        bank_name: "Bank Name",
        bank_bik: "Bank Bik",
        kor_account: "Kor Account",
        account: "Account"
      ),
      BankAccount.create!(
        accountable: nil,
        active: false,
        bank_name: "Bank Name",
        bank_bik: "Bank Bik",
        kor_account: "Kor Account",
        account: "Account"
      )
    ])
  end

  it "renders a list of bank_accounts" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Bank Name".to_s, count: 2
    assert_select "tr>td", text: "Bank Bik".to_s, count: 2
    assert_select "tr>td", text: "Kor Account".to_s, count: 2
    assert_select "tr>td", text: "Account".to_s, count: 2
  end
end
