# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("homes/new", type: :view) do
  before(:each) do
    assign(:home, Home.new(
      title: "MyString",
      content: "MyText",
    ))
  end

  it "renders new home form" do
    render

    assert_select "form[action=?][method=?]", homes_path, "post" do
      assert_select "input[name=?]", "home[title]"

      assert_select "textarea[name=?]", "home[content]"
    end
  end
end
