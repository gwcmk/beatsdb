class CreateSamples < ActiveRecord::Migration
  def up
    create_table :samples do |t|
      t.string :time
      t.string :artist
      t.string :url
      t.text :description
      t.references :song
      t.timestamps
    end
  end

  def down
    drop_table :samples
  end
end
