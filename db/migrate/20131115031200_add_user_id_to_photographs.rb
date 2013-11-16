class AddUserIdToPhotographs < ActiveRecord::Migration
  def change
    add_column :photographs, :user_id, :integer
  end
end
