class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :title
      t.text :header
      t.text :footer

      t.timestamps
    end
  end
end
