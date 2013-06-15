class CreateNavigations < ActiveRecord::Migration
  def change
    create_table :navigations do |t|
      t.string :name
      t.string :url
      t.integer :position, :default => 0

      t.timestamps
    end
  end
end
