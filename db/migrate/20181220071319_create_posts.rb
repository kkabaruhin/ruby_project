class CreatePosts < ActiveRecord::Migration[5.1]
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text   :body
    end
  end

  def self.down
    drop_table :posts
  end
end
