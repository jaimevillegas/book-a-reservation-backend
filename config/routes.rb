# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/users/list_users', to: 'user#list_users'
  get '/glampings/list_glampings', to: 'glamping#list_glampings'
  get '/glampings/list_glampings_details/:id', to: 'glamping#list_glampings_details'
  get '/reservations/list_reservation', to: 'reservation#list_reservations'
  post '/reservations/create', to: 'reservation#create'
  post '/glampings/create', to: 'glamping#create'
  delete '/glampings/destroy_glamping/:id', to: 'glamping#destroy_glamping'

  # Defines the root path route ("/")
  # root "articles#index"
end
