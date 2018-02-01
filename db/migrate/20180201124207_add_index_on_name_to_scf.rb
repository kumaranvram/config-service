class AddIndexOnNameToScf < ActiveRecord::Migration[5.1]
  def change
  	add_index :scfs, :name, :unique => true
  end
end
