class CreateTourCategories < ActiveRecord::Migration
  def change
    create_table :tour_categories do |t|
      t.string :name
      t.integer :weight, :default => 0
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
