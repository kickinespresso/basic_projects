class ProjectsController < InheritedResources::Base

  private

    def project_params
      params.require(:project).permit(:title, :lead, :excerpt, :description, :content, :project_link, :image, :slug, :category_id, :position)
    end
end

