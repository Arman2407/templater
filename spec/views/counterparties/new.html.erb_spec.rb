require "rails_helper"

RSpec.describe "counterparties/new", type: :view do
  before do
    assign(:counterparty, Counterparty.new(
      company_full_name: "MyString",
      company_short_name: "MyString",
      signatory_person: "MyString",
      signatory_basis: "MyString",
      inn: "MyString",
      kpp: "MyString",
      ogrn: "MyString",
      legal_address: "MyString",
      real_address: "MyString",
      post_address: "MyString",
      owner: nil
    ))
  end

  it "renders new counterparty form" do
    render

    assert_select "form[action=?][method=?]", counterparties_path, "post" do
      assert_select "input[name=?]", "counterparty[company_full_name]"

      assert_select "input[name=?]", "counterparty[company_short_name]"

      assert_select "input[name=?]", "counterparty[signatory_person]"

      assert_select "input[name=?]", "counterparty[signatory_basis]"

      assert_select "input[name=?]", "counterparty[inn]"

      assert_select "input[name=?]", "counterparty[kpp]"

      assert_select "input[name=?]", "counterparty[ogrn]"

      assert_select "input[name=?]", "counterparty[legal_address]"

      assert_select "input[name=?]", "counterparty[real_address]"

      assert_select "input[name=?]", "counterparty[post_address]"

      assert_select "input[name=?]", "counterparty[owner_id]"
    end
  end
end
