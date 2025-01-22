# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("products/index", type: :view) do
  before(:each) do
    assign(:products, [
      Product.create!(
        id: 2,
        name: "Name",
        description: "MyText",
        prague_id: 3,
        culture_id: 4,
        disease_id: 5,
      ),
      Product.create!(
        id: 2,
        name: "Name",
        description: "MyText",
        prague_id: 3,
        culture_id: 4,
        disease_id: 5,
      ),
    ])
  end

  it "renders a list of products" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
  end
end
