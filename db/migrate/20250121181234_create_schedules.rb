# frozen_string_literal: true

class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table(:schedules) do |t|
      t.datetime(:visit_date)
      t.references(:service, null: false, foreign_key: true)
      t.references(:client, null: false, foreign_key: true)

      t.timestamps
    end
  end
end
