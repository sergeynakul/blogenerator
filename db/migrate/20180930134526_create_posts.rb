class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :blog, foreign_key: true
      t.string :title
      t.text :body
      t.boolean :status, default: false
      t.integer :views_count
      t.datetime :published_at

      t.timestamps
    end
  end
end
