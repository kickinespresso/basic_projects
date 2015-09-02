if defined?(ActiveAdmin)
  ActiveAdmin.register  BasicProjects::Project, as: 'Project' do
    menu parent: "MyProjects"
    index do
      selectable_column
      column :title
      column :category
      column :slug
      actions
    end

    # customize your resource here
    form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
        f.input :category
        f.input :title
        f.input :lead
        f.input :excerpt
        f.input :description
        f.input :content
        f.input :position
        f.input :project_link
      end

      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end
    permit_params :title, :lead, :excerpt, :description, :content, :slug, :project_link, :year, :image, :position, :featured,  :category, :category_id, :image_cache
  end
end