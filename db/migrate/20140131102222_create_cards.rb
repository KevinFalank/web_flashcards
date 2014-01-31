class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, :limit => 500
      t.string :answer, :limit => 500
      t.integer :deck_id
      t.timestamps
    end
    add_index(:cards, :deck_id)
  end
end
