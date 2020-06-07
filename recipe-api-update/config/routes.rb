# frozen_string_literal: true

Rails.application.routes.draw do
  resources :recipes, only: %i[index show create update]
end
