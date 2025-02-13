# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("products/show", type: :view) do
  before(:each) do
    assign(:product, Product.create!(
      id: 2,
      name: "Name",
      description: "MyText",
      prague_id: 3,
      culture_id: 4,
      disease_id: 5,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/2/))
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/MyText/))
    expect(rendered).to(match(/3/))
    expect(rendered).to(match(/4/))
    expect(rendered).to(match(/5/))
  end
end
