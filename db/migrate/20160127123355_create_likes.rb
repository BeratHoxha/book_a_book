class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :status

      t.timestamps null: false
    end
  end
end 
