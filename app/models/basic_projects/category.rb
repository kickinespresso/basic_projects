module BasicProjects
  class Category < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    has_many :projects
    validates_presence_of :title, :description, :slug

  end
end
