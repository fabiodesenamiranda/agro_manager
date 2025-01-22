# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("products/edit", type: :view) do
  let(:product) {
    Product.create!(
      id: 1,
      name: "MyString",
      description: "MyText",
      prague_id: 1,
      culture_id: 1,
      disease_id: 1,
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do
      assert_select "input[name=?]", "product[id]"

      assert_select "input[name=?]", "product[name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[prague_id]"

      assert_select "input[name=?]", "product[culture_id]"

      assert_select "input[name=?]", "product[disease_id]"
    end
  end
end
