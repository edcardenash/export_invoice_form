Rails.application.routes.draw do
  resources :companies
  resources :export_companies
  resources :invoices
  resources :containers
  resources :products
end
