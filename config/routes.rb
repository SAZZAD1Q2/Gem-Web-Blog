Rails.application.routes.draw do
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
  get '/users', to: 'users#index', as: 'users_index'

  get '/posts', to: 'posts#index', as: 'posts_index'

  get '/posts/:id', to: 'posts#show', as: 'post'

  # get '/users/:id', to: 'users#show', as: 'user'

  # get '/users', to: 'users#index', as: 'users_index'

# get '/users/:id', to: 'users#show', as: 'user'
end
