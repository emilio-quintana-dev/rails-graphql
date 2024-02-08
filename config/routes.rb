Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  post '/', to: 'graphql#execute'
  post '/graphql', to: 'graphql#execute'
end
