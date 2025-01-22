# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("schedules/index", type: :view) do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        service: nil,
        client: nil,
      ),
      Schedule.create!(
        service: nil,
        client: nil,
      ),
    ])
  end

  it "renders a list of schedules" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
