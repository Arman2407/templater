require "rails_helper"

RSpec.describe "bank_accounts/edit", type: :view do
  before do
    @bank_account = assign(:bank_account, BankAccount.create!(
      accountable: nil,
      active: false,
      bank_name: "MyString",
      bank_bik: "MyString",
      kor_account: "MyString",
      account: "MyString"
    ))
  end

  it "renders the edit bank_account form" do
    render

    assert_select "form[action=?][method=?]", bank_account_path(@bank_account), "post" do
      assert_select "input[name=?]", "bank_account[accountable_id]"

      assert_select "input[name=?]", "bank_account[active]"

      assert_select "input[name=?]", "bank_account[bank_name]"

      assert_select "input[name=?]", "bank_account[bank_bik]"

      assert_select "input[name=?]", "bank_account[kor_account]"

      assert_select "input[name=?]", "bank_account[account]"
    end
  end
end
