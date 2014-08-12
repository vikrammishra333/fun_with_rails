class PostsTags < ActiveRecord::Migration
  def change
  	create_table :posts_tags, :id => false do |t|
	  t.references :post, :null => false
	  t.references :tag, :null => false
	end

	add_index(:posts_tags, [:post_id, :tag_id], :unique => true)
  end
end
