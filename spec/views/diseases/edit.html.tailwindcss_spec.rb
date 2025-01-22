# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("diseases/edit", type: :view) do
  let(:disease) {
    Disease.create!(
      name: "MyString",
      description: "MyText",
    )
  }

  before(:each) do
    assign(:disease, disease)
  end

  it "renders the edit disease form" do
    render

    assert_select "form[action=?][method=?]", disease_path(disease), "post" do
      assert_select "input[name=?]", "disease[name]"

      assert_select "textarea[name=?]", "disease[description]"
    end
  end
end
