Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get  '/signup', to: 'tutees#signup'
  post '/signup',  to: 'tutees#create'
  get  '/tutorsignup', to: 'tutors#tsignup'
  post '/tutorsignup', to: 'tutors#create'
  resources :tutees
  
  resources :tutors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

