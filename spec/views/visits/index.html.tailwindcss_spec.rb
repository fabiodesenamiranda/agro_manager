# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("visits/index", type: :view) do
  before(:each) do
    assign(:visits, [
      Visit.create!(
        client: nil,
        notes: "MyText",
      ),
      Visit.create!(
        client: nil,
        notes: "MyText",
      ),
    ])
  end

  it "renders a list of visits" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
