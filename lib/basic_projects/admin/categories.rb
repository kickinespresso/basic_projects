if defined?(ActiveAdmin)
  ActiveAdmin.register  BasicProjects::Category, as: "Category" do
    menu parent: "MyProjects"
    # customize your resource here
    form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
        f.input :title
        f.input :description
      end
      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end
    permit_params :title, :description, :slug

  end
end