Rails.application.routes.draw do
  resources :user_accounts
  resources :services
  resources :products
  resources :communities
  resources :fnfs
  resources :short_codes
  resources :isd_tariffs
  resources :offers
  resources :bonus_accounts
  resources :item_features
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
