class CreateAdPositions < ActiveRecord::Migration
  def change
    create_table :ad_positions do |t|
      t.string :name
      t.string :pic

      t.timestamps
    end
  end
end
