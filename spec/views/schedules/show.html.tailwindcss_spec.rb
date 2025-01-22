# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("schedules/show", type: :view) do
  before(:each) do
    assign(:schedule, Schedule.create!(
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
