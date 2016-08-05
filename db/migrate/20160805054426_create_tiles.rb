class CreateTiles < ActiveRecord::Migration[5.0]
  def change
    create_table :tiles do |t|
      t.integer :user_id
      t.integer :index
      t.string :value
      
      t.timestamps
    end
  end
end
