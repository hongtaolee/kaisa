class AddColumnUrlToAdPositions < ActiveRecord::Migration
  def change
    add_column :ad_positions, :url, :string
  end
end
