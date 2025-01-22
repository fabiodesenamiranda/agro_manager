# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :client
  belong_to :service
  has_many :recommendations
  has_many :schedules
end
