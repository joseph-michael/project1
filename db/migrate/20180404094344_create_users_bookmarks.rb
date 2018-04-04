class CreateUsersBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :users_bookmarks do |t|
      t.integer :user_id
      t.integer :website_id
    end
  end
end
