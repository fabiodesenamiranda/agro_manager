# frozen_string_literal: true

class CreateHomes < ActiveRecord::Migration[8.0]
  def change
    create_table(:homes) do |t|
      t.string(:title)
      t.text(:content)

      t.timestamps
    end
  end
end
