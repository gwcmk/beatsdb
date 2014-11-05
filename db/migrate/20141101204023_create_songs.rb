class CreateSongs < ActiveRecord::Migration
  def up
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :url
      t.text :description

      t.timestamps
    end
  end

  def down
    drop_table :subjects
  end
end
