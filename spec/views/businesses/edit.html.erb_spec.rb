require "rails_helper"

RSpec.describe "businesses/edit", type: :view do
  before do
    @business = assign(:business, Business.create!(
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

  it "renders the edit business form" do
    render

    assert_select "form[action=?][method=?]", business_path(@business), "post" do
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
