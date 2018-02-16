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
        template 'myg.sass', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/myg.sass"
        template '_myg.sass', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/_myg.sass"
        template '_variables.sass', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/_variables.sass"
        template 'variables/_action-button.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_action-button.scss"
        template 'variables/_animate.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_animate.scss"
        template 'variables/_base.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_base.scss"
        template 'variables/_elevation.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_elevation.scss"
        template 'variables/_font.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_font.scss"
        template 'variables/_footer.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_footer.scss"
        template 'variables/_grid.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_grid.scss"
        template 'variables/_layout.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_layout.scss"
        template 'variables/_spacing.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_spacing.scss"
        template 'variables/_text.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_text.scss"
        template 'variables/_theme.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/variables/_theme.scss"
        template 'theme/theme.sass', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/theme/theme.sass"
        template 'theme/_default.scss', "#{Myg.configuration&.assets_dir || 'app/assets/stylesheets/myg'}/theme/_default.scss"
    end

end
