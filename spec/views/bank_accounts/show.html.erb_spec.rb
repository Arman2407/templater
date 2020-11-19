require "rails_helper"

RSpec.describe "bank_accounts/show", type: :view do
  before do
    @bank_account = assign(:bank_account, BankAccount.create!(
      accountable: nil,
      active: false,
      bank_name: "Bank Name",
      bank_bik: "Bank Bik",
      kor_account: "Kor Account",
      account: "Account"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Bank Name/)
    expect(rendered).to match(/Bank Bik/)
    expect(rendered).to match(/Kor Account/)
    expect(rendered).to match(/Account/)
  end
end
