class CreateContextRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :context_regions do |t|
      t.integer :author_id, null: false
      t.integer :updater_id
      t.timestamps
    end

    add_index :context_regions, :author_id
    add_index :context_regions, :updater_id
  end
end
