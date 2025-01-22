# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("homes/show", type: :view) do
  before(:each) do
    assign(:home, Home.create!(
      title: "Title",
      content: "MyText",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/Title/))
    expect(rendered).to(match(/MyText/))
  end
end
