# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :genre
      t.string :author
      t.string :image
      t.string :title
      t.string :editor
      t.string :year

      t.timestamps
    end
  end
end
