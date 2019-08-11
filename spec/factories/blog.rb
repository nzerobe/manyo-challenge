# Description "Use FactoryBot"
FactoryBot.define do

  # Name the test data to be created "task"
  # (If you name test data that matches the class name that actually exists, test data of that class will be created automatically)
  factory :blog do
    title { 'Default title 1 created by Factory' }
    content { 'Default content 1 created by Factory' }
  end

  # Name the test data to be created as "second_task"
  # (If you want to name a non-existent class name, optionally specify "Please make test data of this class")
  factory :second_blog, class: Blog do
    title { 'Default title 2 created by Factory' }
    content { 'Default content 2 created by Factory' }
  end
end