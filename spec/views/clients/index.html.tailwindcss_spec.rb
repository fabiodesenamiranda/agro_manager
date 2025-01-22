# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("clients/index", type: :view) do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        email: "Email",
        address: "Address",
        city: "City",
        state: "State",
        cnpj_cpf: "Cnpj Cpf",
        phone: "Phone",
      ),
      Client.create!(
        name: "Name",
        email: "Email",
        address: "Address",
        city: "City",
        state: "State",
        cnpj_cpf: "Cnpj Cpf",
        phone: "Phone",
      ),
    ])
  end

  it "renders a list of clients" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cnpj Cpf".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
  end
end
