class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :blog_address
      t.text :description

      t.timestamps
    end
  end
end
