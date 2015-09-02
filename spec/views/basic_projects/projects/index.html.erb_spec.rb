require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :lead => "Lead",
        :excerpt => "MyText",
        :description => "MyText",
        :content => "MyText",
        :project_link => "Project Link",
        :image => "Image",
        :slug => "Slug",
        :category => nil,
        :position => 1
      ),
      Project.create!(
        :title => "Title",
        :lead => "Lead",
        :excerpt => "MyText",
        :description => "MyText",
        :content => "MyText",
        :project_link => "Project Link",
        :image => "Image",
        :slug => "Slug",
        :category => nil,
        :position => 1
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Lead".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Project Link".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
