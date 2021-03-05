class PokemonsController < ApplicationController
  def index
    @pokedex_id = params[:pokedex_id] || 1
    pokedex = PokeApi.get(pokedex: @pokedex_id)
    @pokemon_entries = pokedex.pokemon_entries
    # render json: @pokemon_entries and return
  end

  def pokedex_lists
    lists = []
    for i in 1..9
      lists << ["Pokedex #{i}", i]
    end
    lists
  end
  helper_method :pokedex_lists

  protected

end