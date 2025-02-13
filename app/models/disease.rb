# frozen_string_literal: true

class Disease < ApplicationRecord
  has_many :products
  validates :name, presence: true
end
