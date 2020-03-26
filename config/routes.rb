Rails.application.routes.draw do
  get 'login', to: 'users#login'
  get 'register', to: 'users#register'

  post 'signin', to: 'users#signin'
  post 'signup', to: 'users#signup'

  post 'comments/:id/save', to: 'comments#save'
  get 'comments/:id/delete', to: 'comments#destroy'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'posts', to: 'posts#index'
  resources :posts
  root to: 'posts#index'

end
