module BasicProjects
  class Project < ActiveRecord::Base
    belongs_to :category
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    validates_presence_of :title, :description, :slug, :category
  end
end
