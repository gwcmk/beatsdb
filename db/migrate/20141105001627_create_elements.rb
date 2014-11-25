class CreateElements < ActiveRecord::Migration
  def up
    create_table :elements do |t|
      t.string :starting_time
      t.integer :starting_time_i
      t.string :other_times
      t.string :source
      t.text :description
      t.references :song
      t.timestamps
    end
  end

  def down
    drop_table :elements
  end
end
