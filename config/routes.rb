Rails.application.routes.draw do
  
  resources :reviews
  resources :authors do 
    resources :pitcures, module: :authors
  end
  resources :books do 
    resources :pitcures, module: :books
  end  
   devise_for :users
  devise_scope :user do
  authenticated :user do
    root to: 'books#index'
  end
  unauthenticated :user do
    root to: 'devise/registrations#new', as: :unauthenticated_root
  end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
