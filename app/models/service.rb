# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :clients
  has_many :visits
end
