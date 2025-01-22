# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("cultures/edit", type: :view) do
  let(:culture) {
    Culture.create!(
      name: "MyString",
      description: "MyText",
    )
  }

  before(:each) do
    assign(:culture, culture)
  end

  it "renders the edit culture form" do
    render

    assert_select "form[action=?][method=?]", culture_path(culture), "post" do
      assert_select "input[name=?]", "culture[name]"

      assert_select "textarea[name=?]", "culture[description]"
    end
  end
end
