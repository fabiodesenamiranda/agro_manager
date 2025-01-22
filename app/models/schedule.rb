# frozen_string_literal: true

class Schedule < ApplicationRecord
  belongs_to :service
  belongs_to :client
end
