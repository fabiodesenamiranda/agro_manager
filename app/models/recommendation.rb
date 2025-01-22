# frozen_string_literal: true

class Recommendation < ApplicationRecord
  belongs_to :service
  belongs_to :client
  belongs_to :visit
end
