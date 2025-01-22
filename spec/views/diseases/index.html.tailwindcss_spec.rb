# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("diseases/index", type: :view) do
  before(:each) do
    assign(:diseases, [
      Disease.create!(
        name: "Name",
        description: "MyText",
      ),
      Disease.create!(
        name: "Name",
        description: "MyText",
      ),
    ])
  end

  it "renders a list of diseases" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
