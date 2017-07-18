class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :name, null: false
      t.text :lyric, null: false
      t.integer :ord, null: false
      t.boolean :bonus, default: false, null: false

      t.timestamps
    end

    add_index :tracks, [:album, :ord], unique: true
  end
end
