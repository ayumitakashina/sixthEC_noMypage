Rails.application.routes.draw do
  resources :bicycleposts
  resources :bicyclecategories
  devise_for :admins
  	as :admmin do 
  		get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
  		put 'users' => 'devise/registrations#update', :as => 'admin_registration'
  	end
  devise_for :users

  root to: 'bicycleposts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
