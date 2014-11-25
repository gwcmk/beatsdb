class CreateSamples < ActiveRecord::Migration
  def up
    create_table :samples do |t|
      t.string :starting_time
      t.integer :starting_time_i
      t.string :other_times
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
