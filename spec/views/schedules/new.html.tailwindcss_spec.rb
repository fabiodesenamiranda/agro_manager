# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("schedules/new", type: :view) do
  before(:each) do
    assign(:schedule, Schedule.new(
      service: nil,
      client: nil,
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do
      assert_select "input[name=?]", "schedule[service_id]"

      assert_select "input[name=?]", "schedule[client_id]"
    end
  end
end
