class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :deck_id
      t.integer :user_id
      t.timestamps
    end
    add_index(:rounds, :deck_id)
    add_index(:rounds, :user_id)
  end
end
