# frozen_string_literal: true

require 'rails_helper'

RSpec.describe("clients/edit", type: :view) do
  let(:client) {
    Client.create!(
      name: "MyString",
      email: "MyString",
      address: "MyString",
      city: "MyString",
      state: "MyString",
      cnpj_cpf: "MyString",
      phone: "MyString",
    )
  }

  before(:each) do
    assign(:client, client)
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(client), "post" do
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
