Globber::Engine.routes.draw do
  get '*route', to: 'application#index'
end
