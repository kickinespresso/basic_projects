module BasicProjects
  class Project < ActiveRecord::Base
    belongs_to :category
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    mount_uploader :image, ImageUploader
    validates_presence_of :title, :description, :slug, :category
  end
end
