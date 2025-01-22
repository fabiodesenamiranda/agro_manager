# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("visits/edit", type: :view) do
  let(:visit) {
    Visit.create!(
      client: nil,
      notes: "MyText",
    )
  }

  before(:each) do
    assign(:visit, visit)
  end

  it "renders the edit visit form" do
    render

    assert_select "form[action=?][method=?]", visit_path(visit), "post" do
      assert_select "input[name=?]", "visit[client_id]"

      assert_select "textarea[name=?]", "visit[notes]"
    end
  end
end
