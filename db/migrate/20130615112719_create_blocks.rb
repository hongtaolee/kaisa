class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :name
      t.text :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
