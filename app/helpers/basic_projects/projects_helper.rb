module BasicProjects
  module ProjectsHelper
    def show_project_bg(project)
      if project.image.blank?
        #FIXME... static image
        "background-image: url('#{image_path "basic_project/post-thumb03.jpg"}')"
      else
        "background-image: url('#{project.image_url(:thumb)}')"
      end
    end
  end
end
