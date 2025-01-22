# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("recommendations/index", type: :view) do
  before(:each) do
    assign(:recommendations, [
      Recommendation.create!(
        service: nil,
        client: nil,
      ),
      Recommendation.create!(
        service: nil,
        client: nil,
      ),
    ])
  end

  it "renders a list of recommendations" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
