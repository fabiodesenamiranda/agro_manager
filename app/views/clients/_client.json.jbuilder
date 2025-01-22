# frozen_string_literal: true

json.extract!(
  client,
  :id,
  :name,
  :email,
  :registration_date,
  :address,
  :city,
  :state,
  :cnpj_cpf,
  :phone,
  :created_at,
  :updated_at)
json.url(client_url(client, format: :json))
