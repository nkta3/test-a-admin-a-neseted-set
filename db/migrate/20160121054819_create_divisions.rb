class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt

      t.timestamps null: false
    end


    add_index :divisions, :parent_id
    add_index :divisions, :lft
    add_index :divisions, :rgt
  end
end
