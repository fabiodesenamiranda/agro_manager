# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("schedules/edit", type: :view) do
  let(:schedule) {
    Schedule.create!(
      service: nil,
      client: nil,
    )
  }

  before(:each) do
    assign(:schedule, schedule)
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(schedule), "post" do
      assert_select "input[name=?]", "schedule[service_id]"

      assert_select "input[name=?]", "schedule[client_id]"
    end
  end
end
