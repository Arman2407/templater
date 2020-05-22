require "rails_helper"

RSpec.describe "document_templates/show", type: :view do
  before do
    @document_template = assign(:document_template, DocumentTemplate.create!(
      name: "Name",
      owner: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
