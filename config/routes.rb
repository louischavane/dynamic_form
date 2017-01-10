Rails.application.routes.draw do
  get 'contacts/create'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:create, :new]
end
