class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.datetime :game_ended
      t.boolean :finished, default: false
      t.boolean :player_won
      t.timestamps
    end
  end
end
