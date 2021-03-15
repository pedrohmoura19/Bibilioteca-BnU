class CreateTagsBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :tags_books do |t|

      t.references :book, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
