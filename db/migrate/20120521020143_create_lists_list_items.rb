class CreateListsListItems < ActiveRecord::Migration
  def change
    create_table :lists_list_items do |t|
      t.string :subject
      t.text :body
      t.integer :position
      t.integer :list_id

      t.timestamps
    end
  end
end
