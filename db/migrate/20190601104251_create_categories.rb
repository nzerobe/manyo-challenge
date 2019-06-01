class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
       t.string :windows
      t.string :mac
      t.string :linux
      t.string :android
      t.string :iphone
      t.string :hardware
      t.string :software
      t.text :name
      t.text :content 
      t.integer :user_id
        t.integer :blog_id
    end
  end
end
