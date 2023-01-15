Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "hello#hello"
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#user'
  post 'users', to: 'users#add'
  post 'users/uuu', to: 'users#uuu'
  # if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  # end
end
