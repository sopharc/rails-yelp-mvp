Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :index, :new, :show, :edit] do
    resources :reviews, only: [:new]
  end
end
