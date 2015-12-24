class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :email
      t.text :message

      t.timestamps null: false
    end
  end
end
