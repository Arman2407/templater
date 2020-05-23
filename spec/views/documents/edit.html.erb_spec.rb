require "rails_helper"

RSpec.describe "documents/edit", type: :view do
  before do
    @document = assign(:document, Document.create!(
      template: nil,
      business: nil,
      counterparty: nil
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do
      assert_select "input[name=?]", "document[template_id]"

      assert_select "input[name=?]", "document[business_id]"

      assert_select "input[name=?]", "document[counterparty_id]"
    end
  end
end
