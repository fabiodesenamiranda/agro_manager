# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("homes/index", type: :view) do
  before(:each) do
    assign(:homes, [
      Home.create!(
        title: "Title",
        content: "MyText",
      ),
      Home.create!(
        title: "Title",
        content: "MyText",
      ),
    ])
  end

  it "renders a list of homes" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
