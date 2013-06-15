class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :pic
      t.integer :position, :default => 0
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
