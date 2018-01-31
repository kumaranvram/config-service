class CreateScfConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :scf_configurations do |t|
      t.integer :client_id
      t.integer :scf_id
      t.jsonb :value

      t.timestamps
    end
  end
end
