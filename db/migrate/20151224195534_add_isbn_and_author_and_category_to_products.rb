class AddIsbnAndAuthorAndCategoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :isbn, :integer
    add_column :products, :author, :string
    add_column :products, :category, :string
  end
end
