# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("recommendations/edit", type: :view) do
  let(:recommendation) {
    Recommendation.create!(
      service: nil,
      client: nil,
    )
  }

  before(:each) do
    assign(:recommendation, recommendation)
  end

  it "renders the edit recommendation form" do
    render

    assert_select "form[action=?][method=?]", recommendation_path(recommendation), "post" do
      assert_select "input[name=?]", "recommendation[service_id]"

      assert_select "input[name=?]", "recommendation[client_id]"
    end
  end
end
