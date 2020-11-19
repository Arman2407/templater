require "rails_helper"

RSpec.describe "documents/index", type: :view do
  before do
    assign(:documents, [
      Document.create!(
        template: nil,
        business: nil,
        counterparty: nil
      ),
      Document.create!(
        template: nil,
        business: nil,
        counterparty: nil
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
