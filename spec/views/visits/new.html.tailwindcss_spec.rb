# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("visits/new", type: :view) do
  before(:each) do
    assign(:visit, Visit.new(
      client: nil,
      notes: "MyText",
    ))
  end

  it "renders new visit form" do
    render

    assert_select "form[action=?][method=?]", visits_path, "post" do
      assert_select "input[name=?]", "visit[client_id]"

      assert_select "textarea[name=?]", "visit[notes]"
    end
  end
end
