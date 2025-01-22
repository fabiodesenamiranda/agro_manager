# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("clients/new", type: :view) do
  before(:each) do
    assign(:client, Client.new(
      name: "MyString",
      email: "MyString",
      address: "MyString",
      city: "MyString",
      state: "MyString",
      cnpj_cpf: "MyString",
      phone: "MyString",
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[address]"

      assert_select "input[name=?]", "client[city]"

      assert_select "input[name=?]", "client[state]"

      assert_select "input[name=?]", "client[cnpj_cpf]"

      assert_select "input[name=?]", "client[phone]"
    end
  end
end
