Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  get 'users/edit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html	  root to: 'message#index'
 
  
  resources :users, only: [:index,:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end

end	