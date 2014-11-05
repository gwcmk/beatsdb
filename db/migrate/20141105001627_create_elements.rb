class CreateElements < ActiveRecord::Migration
  def up
    create_table :elements do |t|
      t.string :time
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
