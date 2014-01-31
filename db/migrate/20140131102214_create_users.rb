class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :password, null: false
      t.string :email
      t.string :name
      t.timestamps
    end
    add_index(:users, :user_name)
  end
end
