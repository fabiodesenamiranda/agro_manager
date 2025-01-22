# frozen_string_literal: true

class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table(:clients) do |t|
      t.string(:name, null: false)
      t.string(:email, null: false, unique: true)
      t.string(:cnpj_cpf, null: false, unique: true)
      t.string(:phone, null: false)
      t.text(:address, null: false)
      t.string(:city, null: false)
      t.string(:state, null: false)
      t.date(:registration_date, null: false, default: -> { 'CURRENT_DATE' })

      t.timestamps
    end

    add_index(:clients, :email, unique: true)
    add_index(:clients, :cnpj_cpf, unique: true)
  end
end
