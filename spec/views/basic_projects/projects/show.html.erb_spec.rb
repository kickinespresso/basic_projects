require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Lead/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Project Link/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
