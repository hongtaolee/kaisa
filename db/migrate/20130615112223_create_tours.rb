class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :tour_category_id
      t.decimal :price, :precision => 10, :scale => 2
      t.integer :weight, :default => 0      
      t.text :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
