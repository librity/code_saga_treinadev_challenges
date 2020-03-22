# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :recipes, only: [:show]
end
