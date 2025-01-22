# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("homes/edit", type: :view) do
  let(:home) {
    Home.create!(
      title: "MyString",
      content: "MyText",
    )
  }

  before(:each) do
    assign(:home, home)
  end

  it "renders the edit home form" do
    render

    assert_select "form[action=?][method=?]", home_path(home), "post" do
      assert_select "input[name=?]", "home[title]"

      assert_select "textarea[name=?]", "home[content]"
    end
  end
end
