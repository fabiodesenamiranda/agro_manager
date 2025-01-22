# frozen_string_literal: true

class Culture < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, presence: true
end
