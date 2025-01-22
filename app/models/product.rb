# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :recommendations
  has_many :cultures
  has_many :diseases
  has_many :pragues
  # Relacionamentos opcionais, dependendo da lógica do aplicativo:
  belongs_to :prague, class_name: "Prague", foreign_key: "prague_id", optional: true
  belongs_to :culture, class_name: "Culture", foreign_key: "culture_id", optional: true
  belongs_to :disease, class_name: "Disease", foreign_key: "disease_id", optional: true
end
