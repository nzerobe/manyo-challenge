class AddDeadlineToBlogs < ActiveRecord::Migration[5.2]
  def change
     add_column :blogs, :deadline, :date, null: false, default: "2019-01-01"
  end
end
