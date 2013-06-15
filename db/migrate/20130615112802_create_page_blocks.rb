class CreatePageBlocks < ActiveRecord::Migration
  def change
    create_table :page_blocks do |t|
      t.integer :page_id
      t.integer :block_id
      t.integer :position, :default => 0
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
