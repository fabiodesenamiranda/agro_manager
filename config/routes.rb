# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pragues
  resources :diseases
  resources :cultures
  resources :products
  devise_for :users
  resources :users
  resources :services
  resources :visits
  resources :clients
  resources :schedules
  resources :recommendations
  resources :homes

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "homes#index"
end
