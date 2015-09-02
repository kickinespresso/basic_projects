FactoryGirl.define do
  factory :basic_projects_project, :class => 'BasicProjects::Project' do
    title "MyString"
lead "MyString"
excerpt "MyText"
description "MyText"
content "MyText"
project_link "MyString"
image "MyString"
slug "MyString"
category nil
position 1
  end

end
