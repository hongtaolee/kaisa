class CreateFriendLinks < ActiveRecord::Migration
  def change
    create_table :friend_links do |t|
      t.string :name
      t.string :pic
      t.integer :position, :default => 0
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
