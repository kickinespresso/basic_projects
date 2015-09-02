require_dependency "basic_projects/application_controller"

module BasicProjects
  class ProjectsController < ApplicationController
    before_action :set_project, only: [:show]

    # GET /books
    def index
      @projects = Project.page(params[:page])
    end

    # GET /books/1
    def show
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :lead, :excerpt, :description, :content, :project_link, :image, :slug, :category_id, :position)
    end
  end
end
