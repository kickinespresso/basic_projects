module BasicProjects
  class Project < ActiveRecord::Base
    belongs_to :category
  end
end
