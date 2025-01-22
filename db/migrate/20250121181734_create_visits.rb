# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[8.0]
  def change
    create_table(:visits) do |t|
      t.references(:client, null: false, foreign_key: true)
      t.datetime(:visit_date)
      t.text(:notes)

      t.timestamps
    end
  end
end
