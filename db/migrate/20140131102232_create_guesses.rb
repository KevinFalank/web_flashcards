class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :round_id
      t.integer :card_id
      t.integer :correctness
      t.timestamps
    end
    add_index(:guesses, :round_id)
    add_index(:guesses, :card_id)
  end
end
