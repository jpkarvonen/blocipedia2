Rails.application.routes.draw do

  devise_for :users
  resources :charges, only: [:new, :create]
  
  resources :wikis do 
    resources :collaborators, only: [:create, :destroy]
  end



  get 'downgrade' => 'charges#downgrade', :as => "downgrade"

  get 'about' => 'welcome#about'
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
