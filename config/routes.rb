Rails.application.routes.draw do
  
  
  devise_for :users
  resources :profiles do 
  	collection do 
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
      post :mark_as_unread
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact', :to => 'welcome#contact'
  root 'welcome#index'
end
