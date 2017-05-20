Rails.application.routes.draw do
  resources :rooms
  resources :locations do
    resources :rooms
  end
  
  resources :students do
    resources :courses
  end

  resources :courses do
    resources :students
  end

  resources :home

  devise_for :users, controllers: { registrations: "registrations" }

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
