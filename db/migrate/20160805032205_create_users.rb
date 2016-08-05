class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :auth0id
      t.string :email

      t.timestamps
    end

    add_index :users, :auth0id, :unique => true    
  end
end
