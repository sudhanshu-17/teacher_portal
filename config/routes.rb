Rails.application.routes.draw do
  resources :students
  devise_for :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'students#index'
end
