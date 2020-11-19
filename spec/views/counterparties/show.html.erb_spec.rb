require "rails_helper"

RSpec.describe "counterparties/show", type: :view do
  before do
    @counterparty = assign(:counterparty, Counterparty.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Full Name/)
    expect(rendered).to match(/Company Short Name/)
    expect(rendered).to match(/Signatory Person/)
    expect(rendered).to match(/Signatory Basis/)
    expect(rendered).to match(/Inn/)
    expect(rendered).to match(/Kpp/)
    expect(rendered).to match(/Ogrn/)
    expect(rendered).to match(/Legal Address/)
    expect(rendered).to match(/Real Address/)
    expect(rendered).to match(/Post Address/)
    expect(rendered).to match(//)
  end
end
