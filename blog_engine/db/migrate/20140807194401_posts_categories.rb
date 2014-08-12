class PostsCategories < ActiveRecord::Migration
  def change
  	create_table :posts_categories, :id => false do |t|
	  t.references :post, :null => false
	  t.references :category, :null => false
	end

	add_index(:posts_categories, [:post_id, :category_id], :unique => true)
  end
end
