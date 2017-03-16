Rails.application.routes.draw do
  get 'account/signup' => "signup#index", as: :signup_index
  post 'signup/create_user'

  #get 'home/index' 

  root 'home#index'

  resource :signup

  resource :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
