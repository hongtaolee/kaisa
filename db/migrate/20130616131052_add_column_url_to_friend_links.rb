class AddColumnUrlToFriendLinks < ActiveRecord::Migration
  def change
    add_column :friend_links, :url, :string
  end
end
