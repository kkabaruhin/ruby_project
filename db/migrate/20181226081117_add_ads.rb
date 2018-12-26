class AddAds < ActiveRecord::Migration[5.1]
  def self.up
    create_table :announcements do |t|
      t.string :title
      t.text   :body
    end
  end

  def self.down
    drop_table :announcements
  end
end
