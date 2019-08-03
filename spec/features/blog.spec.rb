# In this require, the feature required for Feature Spec such as Capybara are available.
require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Task management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
  scenario "Test blog list" do

  end

  scenario "Test blog creation" do

  end

  scenario "Test blog details" do

  end
  
  scenario "Test blog list" do
  # Create two tasks in advance to use in the task list test
  Blog.create!(title: 'test_blog_01', content: 'testtesttest')
  Blog.create!(title: 'test_blog_02', content: 'samplesample')

  # visit to tasks_path (transition to task list page)
  visit blogs_path

  # write a test to verify that the string "" testtesttest "" samplesample "is included when accessing the task list page using have_content method

  expect(page).to have_content 'testtesttest'
  expect(page).to have_content 'samplesample'
end
  
   scenario " Testing blog creation "  do
    visit new_blog_path
    fill_in 'blog_title', with: 'testtesttest'
    fill_in 'blog_content', with: 'samplesample'
   click_on 'Create Blog'
    expect(page).to have_content'testtesttest'
    expect(page).to have_content'samplesample'
  end
  
end