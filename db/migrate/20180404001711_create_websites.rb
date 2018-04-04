class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
              t.text :title
              t.text :description
              t.text :link
              t.text :image

              t.timestamps
    end
  end
end
