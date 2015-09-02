require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :lead => "MyString",
      :excerpt => "MyText",
      :description => "MyText",
      :content => "MyText",
      :project_link => "MyString",
      :image => "MyString",
      :slug => "MyString",
      :category => nil,
      :position => 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_lead[name=?]", "project[lead]"

      assert_select "textarea#project_excerpt[name=?]", "project[excerpt]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "textarea#project_content[name=?]", "project[content]"

      assert_select "input#project_project_link[name=?]", "project[project_link]"

      assert_select "input#project_image[name=?]", "project[image]"

      assert_select "input#project_slug[name=?]", "project[slug]"

      assert_select "input#project_category_id[name=?]", "project[category_id]"

      assert_select "input#project_position[name=?]", "project[position]"
    end
  end
end
