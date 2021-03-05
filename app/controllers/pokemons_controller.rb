class PokemonsController < ApplicationController
  def index
    pokedex = PokeApi.get(pokedex: params[:pokedex] || 1)
    @pokemon_entries = pokedex.pokemon_entries.size
  end
end