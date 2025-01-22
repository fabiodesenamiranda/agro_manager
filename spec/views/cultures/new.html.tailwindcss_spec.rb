# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("cultures/new", type: :view) do
  before(:each) do
    assign(:culture, Culture.new(
      name: "MyString",
      description: "MyText",
    ))
  end

  it "renders new culture form" do
    render

    assert_select "form[action=?][method=?]", cultures_path, "post" do
      assert_select "input[name=?]", "culture[name]"

      assert_select "textarea[name=?]", "culture[description]"
    end
  end
end
