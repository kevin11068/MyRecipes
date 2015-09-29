class Reviews < ActiveRecord::Migration
  def change
      create_table :reviews do |t|
      t.text :comment
      t.integer :chef_id, :recipe_id      
      t.timestamps
  end
  end
end
