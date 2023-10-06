class CreateContextEtalonUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :context_etalon_urls do |t|
      t.string :url, null: false
      t.references :context_region, foreign_key: true
      t.integer :author_id, null: false
      t.integer :updater_id
      t.timestamps
    end

    add_index :context_etalon_urls, :author_id
    add_index :context_etalon_urls, :updater_id
  end
end