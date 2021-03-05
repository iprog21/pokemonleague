Rails.application.routes.draw do
  root to: 'pokemons#index'
  resources :pokemons, only: [:index] do
   collection do
    post :move_to_lineup
   end
  end
end
