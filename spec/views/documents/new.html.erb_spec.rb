require "rails_helper"

RSpec.describe "documents/new", type: :view do
  before do
    assign(:document, Document.new(
      template: nil,
      business: nil,
      counterparty: nil
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do
      assert_select "input[name=?]", "document[template_id]"

      assert_select "input[name=?]", "document[business_id]"

      assert_select "input[name=?]", "document[counterparty_id]"
    end
  end
end
