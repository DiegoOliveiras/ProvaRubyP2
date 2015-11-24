Rails.application.routes.draw do
  resources :funcionarios
  get 'paginas/index'
  get 'paginas/localizacao'
  root :to => 'paginas#index'
end
