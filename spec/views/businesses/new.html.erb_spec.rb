require "rails_helper"

RSpec.describe "businesses/new", type: :view do
  before do
    assign(:business, Business.new(
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

  it "renders new business form" do
    render

    assert_select "form[action=?][method=?]", businesses_path, "post" do
      assert_select "input[name=?]", "business[company_full_name]"

      assert_select "input[name=?]", "business[company_short_name]"

      assert_select "input[name=?]", "business[signatory_person]"

      assert_select "input[name=?]", "business[signatory_basis]"

      assert_select "input[name=?]", "business[inn]"

      assert_select "input[name=?]", "business[kpp]"

      assert_select "input[name=?]", "business[ogrn]"

      assert_select "input[name=?]", "business[legal_address]"

      assert_select "input[name=?]", "business[real_address]"

      assert_select "input[name=?]", "business[post_address]"

      assert_select "input[name=?]", "business[owner_id]"
    end
  end
end
