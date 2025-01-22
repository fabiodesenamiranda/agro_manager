# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("clients/show", type: :view) do
  before(:each) do
    assign(:client, Client.create!(
      name: "Name",
      email: "Email",
      address: "Address",
      city: "City",
      state: "State",
      cnpj_cpf: "Cnpj Cpf",
      phone: "Phone",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Email/))
    expect(rendered).to(match(/Address/))
    expect(rendered).to(match(/City/))
    expect(rendered).to(match(/State/))
    expect(rendered).to(match(/Cnpj Cpf/))
    expect(rendered).to(match(/Phone/))
  end
end
