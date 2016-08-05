class CreateTiles < ActiveRecord::Migration[5.0]
  def change
    create_table :tiles do |t|
      t.integer :user_id
      t.integer :index
      t.boolean :ship
      t.boolean :visited
      
      t.timestamps
    end
  end
end
