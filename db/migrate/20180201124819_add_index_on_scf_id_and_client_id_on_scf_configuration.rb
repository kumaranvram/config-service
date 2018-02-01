class AddIndexOnScfIdAndClientIdOnScfConfiguration < ActiveRecord::Migration[5.1]
  def change
  	add_index :scf_configurations, [:client_id, :scf_id], :unique => true
  end
end
