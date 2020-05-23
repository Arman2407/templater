require "rails_helper"

RSpec.describe "documents/show", type: :view do
  before do
    @document = assign(:document, Document.create!(
      template: nil,
      business: nil,
      counterparty: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
