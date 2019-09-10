class AddExpiredToBlogs < ActiveRecord::Migration[5.2]
  def change
     add_column:blogs, :expired_at, :datetime, default: -> { 'NOW()' }
  end
end
