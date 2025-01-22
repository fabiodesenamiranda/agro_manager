# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("pragues/edit", type: :view) do
  let(:prague) {
    Prague.create!(
      name: "MyString",
      description: "MyText",
    )
  }

  before(:each) do
    assign(:prague, prague)
  end

  it "renders the edit prague form" do
    render

    assert_select "form[action=?][method=?]", prague_path(prague), "post" do
      assert_select "input[name=?]", "prague[name]"

      assert_select "textarea[name=?]", "prague[description]"
    end
  end
end
