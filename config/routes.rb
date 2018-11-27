# frozen_string_literal: true

Rails.application.routes.draw do
  resources :dialogs, except: %i[new end]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Dialog routes
  # get '/dialogs' => 'dialogs#index'
  # get '/dialogs/:id' => 'dialogs#show'
  # post '/dialogs' => 'dialogs#create'
  # patch '/dialogs/:id' => 'dialogs#update'
  # delete '/dialogs/:id' => 'dialogs#destroy'
end
