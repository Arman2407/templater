require "rails_helper"

RSpec.describe "document_templates/edit", type: :view do
  before do
    @document_template = assign(:document_template, DocumentTemplate.create!(
      name: "MyString",
      owner: nil
    ))
  end

  it "renders the edit document_template form" do
    render

    assert_select "form[action=?][method=?]", document_template_path(@document_template), "post" do
      assert_select "input[name=?]", "document_template[name]"

      assert_select "input[name=?]", "document_template[owner_id]"
    end
  end
end
