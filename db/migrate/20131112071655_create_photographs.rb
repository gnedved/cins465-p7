class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
