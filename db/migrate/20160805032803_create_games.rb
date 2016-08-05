class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.time :game_ended
      t.timestamps
    end
  end
end
