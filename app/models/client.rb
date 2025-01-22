# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :schedules
  has_many :visits
end
