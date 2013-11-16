class CreateTagHashes < ActiveRecord::Migration
  def change
    create_table :tag_hashes do |t|
      t.string :key
      t.string :value
      t.integer :photograph_id

      t.timestamps
    end
  end
end
