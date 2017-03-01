Rails.application.routes.draw do
root 'home#index'
get 'about/home', to: 'home#about'
get 'posts', to: 'posts#index'
get '/new/posts', to: 'posts#new'
get '/show/posts', to: 'posts#show'
get '/intervision/posts', to: 'posts#intervision'
get '/mazer/posts', to: 'posts#mazer'
get '/quantum/posts', to: 'posts#quantum'

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
