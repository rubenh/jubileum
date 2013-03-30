class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
