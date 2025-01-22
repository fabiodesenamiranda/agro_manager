# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("visits/show", type: :view) do
  before(:each) do
    assign(:visit, Visit.create!(
      client: nil,
      notes: "MyText",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(//))
    expect(rendered).to(match(/MyText/))
  end
end
