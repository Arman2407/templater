require "rails_helper"

RSpec.describe "businesses/index", type: :view do
  before do
    assign(:businesses, [
      Business.create!(
        company_full_name: "Company Full Name",
        company_short_name: "Company Short Name",
        signatory_person: "Signatory Person",
        signatory_basis: "Signatory Basis",
        inn: "Inn",
        kpp: "Kpp",
        ogrn: "Ogrn",
        legal_address: "Legal Address",
        real_address: "Real Address",
        post_address: "Post Address",
        owner: nil
      ),
      Business.create!(
        company_full_name: "Company Full Name",
        company_short_name: "Company Short Name",
        signatory_person: "Signatory Person",
        signatory_basis: "Signatory Basis",
        inn: "Inn",
        kpp: "Kpp",
        ogrn: "Ogrn",
        legal_address: "Legal Address",
        real_address: "Real Address",
        post_address: "Post Address",
        owner: nil
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", text: "Company Full Name".to_s, count: 2
    assert_select "tr>td", text: "Company Short Name".to_s, count: 2
    assert_select "tr>td", text: "Signatory Person".to_s, count: 2
    assert_select "tr>td", text: "Signatory Basis".to_s, count: 2
    assert_select "tr>td", text: "Inn".to_s, count: 2
    assert_select "tr>td", text: "Kpp".to_s, count: 2
    assert_select "tr>td", text: "Ogrn".to_s, count: 2
    assert_select "tr>td", text: "Legal Address".to_s, count: 2
    assert_select "tr>td", text: "Real Address".to_s, count: 2
    assert_select "tr>td", text: "Post Address".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
