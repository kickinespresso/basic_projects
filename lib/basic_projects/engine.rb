require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'

module BasicProjects
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'ckeditor'

    isolate_namespace BasicProjects


    config.generators do |g|
      g.test_framework      :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    initializer :basic_projects do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '/admin']
    end



  end
end
