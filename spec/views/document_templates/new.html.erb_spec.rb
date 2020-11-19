require "rails_helper"

RSpec.describe "document_templates/new", type: :view do
  before do
    assign(:document_template, DocumentTemplate.new(
      name: "MyString",
      owner: nil
    ))
  end

  it "renders new document_template form" do
    render

    assert_select "form[action=?][method=?]", document_templates_path, "post" do
      assert_select "input[name=?]", "document_template[name]"

      assert_select "input[name=?]", "document_template[owner_id]"
    end
  end
end
