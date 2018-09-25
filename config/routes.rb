Rails.application.routes.draw do
  get 'hello' => 'static#hello'
  resources :users, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
