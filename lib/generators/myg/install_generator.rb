require 'rails/generators'
require 'rails/generators/migration'

class Myg::InstallGenerator < Rails::Generators::Base

    include Rails::Generators::Migration

    source_root File.join File.dirname(__FILE__), '../templates/install'
    desc 'Install Myg on Rails'

    def create_initializer
        template 'initializer.rb', 'config/initializers/myg.rb'
    end

    def create_assets
        template 'myg.sass', "#{Myg.configuration.assets_dir}/myg.sass"
        template '_myg.sass', "#{Myg.configuration.assets_dir}/_myg.sass"
        template '_variables.sass', "#{Myg.configuration.assets_dir}/_variables.sass"
        template 'theme/theme.sass', "#{Myg.configuration.assets_dir}/theme/theme.sass"
        template 'theme/_default.scss', "#{Myg.configuration.assets_dir}/theme/_default.scss"
    end

end
