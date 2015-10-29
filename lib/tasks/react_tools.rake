require 'bower-rails'
require 'react-rails'
require 'browserify-rails'
require 'rake'

namespace :react_tools do
  desc "Install npm"
  task :generate do
    source_file = File.join File.dirname(__dir__), "my_react_tools/templates"
    copy_file "#{source_file}/package.json", "package.json"
    copy_file "#{source_file}/my_react_tools.rb", "config/initializers/my_react_tools.rb"

    views_path = "app/assets/javascripts/views/views.js"
    dirname = File.dirname(views_path)
    unless File.directory?(dirname)
      mkdir_p(dirname)
    end
    copy_file "#{source_file}/views.js", views_path
    sh "rails generate bower_rails:initialize json"
  end

  task :install  do
    sh "npm install"
    sh "rails generate react:install"
    Rake::Task['bower:install'].invoke
  end
end
