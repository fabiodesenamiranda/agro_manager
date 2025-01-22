# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("pragues/index", type: :view) do
  before(:each) do
    assign(:pragues, [
      Prague.create!(
        name: "Name",
        description: "MyText",
      ),
      Prague.create!(
        name: "Name",
        description: "MyText",
      ),
    ])
  end

  it "renders a list of pragues" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
