# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("pragues/new", type: :view) do
  before(:each) do
    assign(:prague, Prague.new(
      name: "MyString",
      description: "MyText",
    ))
  end

  it "renders new prague form" do
    render

    assert_select "form[action=?][method=?]", pragues_path, "post" do
      assert_select "input[name=?]", "prague[name]"

      assert_select "textarea[name=?]", "prague[description]"
    end
  end
end
