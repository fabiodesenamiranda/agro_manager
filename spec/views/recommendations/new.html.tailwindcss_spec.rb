# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("recommendations/new", type: :view) do
  before(:each) do
    assign(:recommendation, Recommendation.new(
      service: nil,
      client: nil,
    ))
  end

  it "renders new recommendation form" do
    render

    assert_select "form[action=?][method=?]", recommendations_path, "post" do
      assert_select "input[name=?]", "recommendation[service_id]"

      assert_select "input[name=?]", "recommendation[client_id]"
    end
  end
end
