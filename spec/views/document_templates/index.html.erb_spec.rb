require "rails_helper"

RSpec.describe "document_templates/index", type: :view do
  before do
    assign(:document_templates, [
      DocumentTemplate.create!(
        name: "Name",
        owner: nil
      ),
      DocumentTemplate.create!(
        name: "Name",
        owner: nil
      )
    ])
  end

  it "renders a list of document_templates" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
