# frozen_string_literal: true

json.extract!(recommendation, :id, :service_id, :client_id, :suggested_date, :created_at, :updated_at)
json.url(recommendation_url(recommendation, format: :json))
