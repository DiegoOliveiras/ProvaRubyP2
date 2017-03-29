Rails.application.routes.draw do
  resources :consultas do
  	collection do
  		get :listar
  	end
  end
  

  resources :pacientes
  resources :dentistas
  get 'paginas/index'

  root :to => 'paginas#index'
end
