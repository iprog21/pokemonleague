class PokemonsController < ApplicationController
  def index
    @pokedex_id = params[:pokedex_id] || 1
    pokedex = PokeApi.get(pokedex: @pokedex_id)
    @pokemon_entries = pokedex.pokemon_entries
  end

  def move_to_lineup

    pokedexid = params[:pokedexid]
    entry_number = params[:entry_number]
    lineup = params[:lineup]
    pokemon = params[:pokemon]
    url = params[:pokemon_url]

    pokemon_lineup = PokemonLineup.find_or_create_by(lineup: lineup)
    pokemon_lineup.pokedex_id = pokedexid
    pokemon_lineup.entry_number = entry_number
    pokemon_lineup.pokemon = pokemon
    pokemon_lineup.url = url
    pokemon_lineup.save

    head :ok
  end

  def pokedex_lists
    lists = []
    for i in 1..9
      lists << ["Pokedex #{i}", i]
    end
    lists
  end
  helper_method :pokedex_lists

  def available_lineups
    lineups = []
    for i in 1..6
      lineups << [i, i]
    end
    lineups
  end
  helper_method :available_lineups

  protected

end