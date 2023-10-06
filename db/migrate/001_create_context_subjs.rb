class CreateContextSubjs < ActiveRecord::Migration[5.2]
  def change
    create_table :context_subjs do |t|
      t.string :reason, null: false
      t.integer :author_id, null: false
      t.integer :updater_id
      t.timestamps
    end

    add_index :context_subjs, :author_id
    add_index :context_subjs, :updater_id
  end
end
