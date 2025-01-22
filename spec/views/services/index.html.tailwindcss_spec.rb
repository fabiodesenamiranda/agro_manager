# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("services/index", type: :view) do
  before(:each) do
    assign(:services, [
      Service.create!(
        name: "Name",
        description: "MyText",
      ),
      Service.create!(
        name: "Name",
        description: "MyText",
      ),
    ])
  end

  it "renders a list of services" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
