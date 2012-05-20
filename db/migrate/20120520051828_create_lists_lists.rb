class CreateListsLists < ActiveRecord::Migration
  def change
    create_table :lists_lists do |t|
      t.string :subject
      t.text :body
      t.integer :position

      t.string :listable_type
      t.integer :listable_id

      t.timestamps
    end
  end
end
