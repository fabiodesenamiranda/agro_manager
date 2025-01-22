# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("products/new", type: :view) do
  before(:each) do
    assign(:product, Product.new(
      id: 1,
      name: "MyString",
      description: "MyText",
      prague_id: 1,
      culture_id: 1,
      disease_id: 1,
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input[name=?]", "product[id]"

      assert_select "input[name=?]", "product[name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[prague_id]"

      assert_select "input[name=?]", "product[culture_id]"

      assert_select "input[name=?]", "product[disease_id]"
    end
  end
end
