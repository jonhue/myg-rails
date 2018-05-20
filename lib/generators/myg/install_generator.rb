require 'rails/generators'
require 'rails/generators/migration'

class Myg::InstallGenerator < Rails::Generators::Base

    include Rails::Generators::Migration

    source_root File.join File.dirname(__FILE__), '../templates/install'
    desc 'Install Myg on Rails'

    def create_initializer
        template 'initializer.rb', 'config/initializers/myg.rb'
    end

    def create_stylesheets
        template 'stylesheets/myg.sass', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/myg.sass"
        template 'stylesheets/_myg.sass', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/_myg.sass"
        template 'stylesheets/_variables.sass', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/_variables.sass"
        template 'stylesheets/variables/_action-button.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_action-button.scss"
        template 'stylesheets/variables/_animate.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_animate.scss"
        template 'stylesheets/variables/_base.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_base.scss"
        template 'stylesheets/variables/_font.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_font.scss"
        template 'stylesheets/variables/_footer.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_footer.scss"
        template 'stylesheets/variables/_grid.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_grid.scss"
        template 'stylesheets/variables/_layout.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_layout.scss"
        template 'stylesheets/variables/_spacing.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_spacing.scss"
        template 'stylesheets/variables/_text.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_text.scss"
        template 'stylesheets/variables/_theme.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/variables/_theme.scss"
        template 'stylesheets/theme/theme.sass', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/theme/theme.sass"
        template 'stylesheets/theme/_default.scss', "#{Myg.configuration&.stylesheets_dir || 'app/assets/stylesheets/myg'}/theme/_default.scss"
    end

    def create_javascripts
        template 'javascripts/index.js.erb', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/index.js"
        unless Myg.configuration&.es6 == false
            template 'javascripts/action-button.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/action-button.js"
            template 'javascripts/button.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/button.js"
            template 'javascripts/card.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/card.js"
            template 'javascripts/checkbox.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/checkbox.js"
            template 'javascripts/dialog.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/dialog.js"
            template 'javascripts/drawer.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/drawer.js"
            template 'javascripts/dropdown.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/dropdown.js"
            template 'javascripts/footer.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/footer.js"
            template 'javascripts/form-field.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/form-field.js"
            template 'javascripts/icon.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/icon.js"
            template 'javascripts/input.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/input.js"
            template 'javascripts/menu.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/menu.js"
            template 'javascripts/modal.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/modal.js"
            template 'javascripts/progress.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/progress.js"
            template 'javascripts/radio.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/radio.js"
            template 'javascripts/select.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/select.js"
            template 'javascripts/sidebar.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/sidebar.js"
            template 'javascripts/slide.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/slide.js"
            template 'javascripts/slider.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/slider.js"
            template 'javascripts/tabs.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/tabs.js"
            template 'javascripts/text.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/text.js"
            template 'javascripts/theme.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/theme.js"
            template 'javascripts/titlebar.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/titlebar.js"
            template 'javascripts/toast.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/toast.js"
            template 'javascripts/toolbar.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/toolbar.js"
            template 'javascripts/tooltip.js', "#{Myg.configuration&.javascripts_dir || 'app/assets/javascripts/myg'}/tooltip.js"
        end
    end

end
