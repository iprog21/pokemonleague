class CreatePokemonLineups < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_lineups do |t|
      t.integer :pokedex_id
      t.integer :entry_number
      t.integer :lineup
      t.string :pokemon
      t.string :url
      t.timestamps
    end
  end
end
