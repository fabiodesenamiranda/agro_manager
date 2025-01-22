# frozen_string_literal: true

class Prague < ApplicationRecord
  has_many :products
  validates :name, presence: true
end
