Rails.application.routes.draw do
  devise_for :users
 # Railsの動作確認用
 get "up" => "rails/health#show", as: :rails_health_check

  # PWA用
  get "service-worker" => "rails/pwa#service_worker",
    as: :pwa_service_worker

  get "manifest" => "rails/pwa#manifest",
      as: :pwa_manifest

  # 各ページのルーティング
  resources :tweets
  
  # トップページ
  root "tweets#index"

  


end