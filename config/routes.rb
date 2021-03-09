Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :films, only: [:index, :show]
  get '/getColorPalette', to: 'films#getColorPalette'
  get '/search', to: 'films#search'
end
