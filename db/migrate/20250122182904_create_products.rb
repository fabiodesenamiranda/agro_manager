# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table(:products) do |t|
      t.string(:name)
      t.text(:description)
      t.integer(:prague_id)
      t.integer(:culture_id)
      t.integer(:disease_id)

      t.timestamps
    end
  end
end
