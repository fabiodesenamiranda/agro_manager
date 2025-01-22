# frozen_string_literal: true

class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table(:notifications) do |t|
      t.references(:user, null: false, foreign_key: true)
      t.text(:content)
      t.boolean(:read)

      t.timestamps
    end
  end
end
