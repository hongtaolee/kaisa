class AddColumnTypeeToTours < ActiveRecord::Migration
  def change
    add_column :tours, :typee, :string
  end
end
