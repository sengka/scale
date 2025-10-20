# config/routes.rb

Rails.application.routes.draw do
  # API Versiyonlaması için /api/v1 namespace'i
  namespace :api do
    namespace :v1 do
      # 5 Kritik Model için RESTful Rotasyonlar
      resources :users, only: [:index, :show, :create, :update]
      resources :scales
      resources :surveys
      resources :responses, only: [:index, :create, :show]
      resources :analyses, only: [:index, :create, :show]
    end # <--- 2. namespace bloğunu kapatır
  end   # <--- 1. namespace bloğunu kapatır

  # Sağlık kontrolü
  get "up" => "rails/health#show", as: :rails_health_check

  # Unutmayın: En dıştaki 'Rails.application.routes.draw do' bloğu en alttaki 'end' ile kapanmalıdır.
end
