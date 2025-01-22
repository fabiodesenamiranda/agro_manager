# frozen_string_literal: true

class CreatePragues < ActiveRecord::Migration[8.0]
  def change
    create_table(:pragues) do |t|
      t.string(:name)
      t.text(:description)

      t.timestamps
    end
  end
end
