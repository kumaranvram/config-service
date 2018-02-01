class AddDefaultValueToScf < ActiveRecord::Migration[5.1]
  def change
    add_column :scfs, :default_value, :jsonb
  end
end
