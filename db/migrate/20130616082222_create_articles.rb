class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
