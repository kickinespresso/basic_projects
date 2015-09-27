require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'
require 'carrierwave'
require 'fog/aws/storage'

module BasicProjects
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'ckeditor'
    require 'activeadmin'

    isolate_namespace BasicProjects

    config.generators do |g|
      g.test_framework      :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    initializer :basic_projects do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '/admin']
    end

    # putting this here rather than config/initializers so that Storytime is configured before getting there
    initializer "basic_projects.configure_carrierwave" do
      CarrierWave.configure do |config|
        if BasicProjects.media_storage == :s3
          config.storage = :fog
          config.fog_credentials = {
              :provider               => 'AWS',
              :region                 => BasicProjects.aws_region,
              :aws_access_key_id      => BasicProjects.aws_access_key_id,
              :aws_secret_access_key  => BasicProjects.aws_secret_key
          }
          config.fog_directory  = BasicProjects.s3_bucket
          config.fog_public     = true
          config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
        else
          config.storage = :file
        end

        config.enable_processing = !Rails.env.test?
      end
    end


  end
end
