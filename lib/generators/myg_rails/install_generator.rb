require 'rails/generators'
require 'rails/generators/migration'

class MygRails::InstallGenerator < Rails::Generators::Base

    include Rails::Generators::Migration

    source_root File.join File.dirname(__FILE__), '../templates/install'
    desc 'Install Myg on Rails'

    def create_initializer
        template 'initializer.rb', 'config/initializers/myg-rails.rb'
    end

    def create_assets
        template 'myg.sass', 'app/assets/stylesheets/myg/myg.sass'
        template '_variables.sass', 'app/assets/stylesheets/myg/_variables.sass'
        template 'theme/theme.sass', 'app/assets/stylesheets/myg/theme/theme.sass'
        template 'theme/_default.scss', 'app/assets/stylesheets/myg/theme/_default.scss'
    end

end
