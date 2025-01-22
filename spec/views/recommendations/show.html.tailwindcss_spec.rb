# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("recommendations/show", type: :view) do
  before(:each) do
    assign(:recommendation, Recommendation.create!(
      service: nil,
      client: nil,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(//))
    expect(rendered).to(match(//))
  end
end
