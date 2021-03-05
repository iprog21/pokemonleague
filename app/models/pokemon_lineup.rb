class PokemonLineup < ApplicationRecord
  class << self
    def pokemon_on_lineup lineup
      return lineup if not exists?(lineup: lineup)
      lineup = find_by(lineup: lineup)
      lineup.pokemon
    end

    def pokemon_url lineup
      return 'javascript:void(0)' if not exists?(lineup: lineup)
      lineup = find_by(lineup: lineup)
      lineup.url
    end

    def moved_already? pokemon
      exists?(pokemon: pokemon)
    end
    
    def is_occupied? lineup
      exists?(lineup: lineup)
    end
  end
end