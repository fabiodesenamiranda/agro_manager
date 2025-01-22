# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("users/show", type: :view) do
  before(:each) do
    assign(:user, User.create!(
      name: "Name",
      email: "Email",
      password: "Password",
      role: "Role",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Email/))
    expect(rendered).to(match(/Password/))
    expect(rendered).to(match(/Role/))
  end
end
