

ActiveAdmin.setup do |config|
  config.namespace :admin do |admin|
    admin.build_menu do |menu|
      menu.add label: 'MyProjects', priority: 0
    end
  end
end
