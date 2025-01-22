# frozen_string_literal: true

class CreateRecommendations < ActiveRecord::Migration[8.0]
  def change
    create_table(:recommendations) do |t|
      t.references(:service, null: false, foreign_key: true)
      t.references(:client, null: false, foreign_key: true)
      t.datetime(:suggested_date)

      t.timestamps
    end
  end
end
