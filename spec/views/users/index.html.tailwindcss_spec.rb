# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("users/index", type: :view) do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Name",
        email: "Email",
        password: "Password",
        role: "Role",
      ),
      User.create!(
        name: "Name",
        email: "Email",
        password: "Password",
        role: "Role",
      ),
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Password".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Role".to_s), count: 2
  end
end
