require 'rails_helper'

RSpec.describe Blog, type: :model do

  
   before do
    @blog = build(:blog)
   end
  
  
 it 'validation wont pass if title is empty' do
    @blog.title = ''
    expect(@blog).not_to be_valid
 end
  
  it "Validation does not pass if content is empty" do
#   blog = Blog.new( title:'failure test', content: '' )
    @blog.content = ''
    expect(blog).not_to be_valid
  end
  
it 'do not pass validation when title is longer than 31 characters' do
    @blog.title = 'x' * 31
    expect(@blog).not_to be_valid
end
  

#   it "validation passes If content is described in title and content" do
#     # Describe the contents here
#     blog = Blog.new(title:'Valid', content:'Valid')
#     expect(blog).to be_valid
    
#   end
end