class CreateFocusImages < ActiveRecord::Migration
  def change
    create_table :focus_images do |t|
      t.string :name
      t.string :url
      t.string :pic
      t.integer :position, :default => 0
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
