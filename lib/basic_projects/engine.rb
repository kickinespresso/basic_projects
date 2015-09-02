require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'
require 'activeadmin'

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

  end
end
