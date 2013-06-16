class AddColumnCodeToAdPositions < ActiveRecord::Migration
  def change
    add_column :ad_positions, :code, :string
    add_column :tours, :is_hot, :boolean, :default => false
    add_column :tours, :is_recommend, :boolean, :default => false
  end
end
