# frozen_string_literal: true

require 'rails/generators'
require 'rails/generators/migration'

module Myg
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.join File.dirname(__FILE__), '../templates/install'
    desc 'Install Myg on Rails'

    def create_initializer
      template 'initializer.rb', 'config/initializers/myg.rb'
    end

    # rubocop:disable Metrics/AbcSize
    # rubocop:disable Metrics/MethodLength
    def create_stylesheets
      template 'stylesheets/myg.scss', "#{stylesheets_dir}/myg.scss"
      template 'stylesheets/variables/_action-button.scss',
               "#{stylesheets_dir}/variables/_action-button.scss"
      template 'stylesheets/variables/_animate.scss',
               "#{stylesheets_dir}/variables/_animate.scss"
      template 'stylesheets/variables/_base.scss',
               "#{stylesheets_dir}/variables/_base.scss"
      template 'stylesheets/variables/_font.scss',
               "#{stylesheets_dir}/variables/_font.scss"
      template 'stylesheets/variables/_footer.scss',
               "#{stylesheets_dir}/variables/_footer.scss"
      template 'stylesheets/variables/_grid.scss',
               "#{stylesheets_dir}/variables/_grid.scss"
      template 'stylesheets/variables/_layout.scss',
               "#{stylesheets_dir}/variables/_layout.scss"
      template 'stylesheets/variables/_spacing.scss',
               "#{stylesheets_dir}/variables/_spacing.scss"
      template 'stylesheets/variables/_text.scss',
               "#{stylesheets_dir}/variables/_text.scss"
      template 'stylesheets/variables/_theme.scss',
               "#{stylesheets_dir}/variables/_theme.scss"
      template 'stylesheets/theme/theme.scss',
               "#{stylesheets_dir}/theme/theme.scss"
      template 'stylesheets/theme/_custom.scss',
               "#{stylesheets_dir}/theme/_custom.scss"
    end

    def create_javascripts
      template 'javascripts/index.js.erb', "#{javascripts_dir}/index.js"

      return unless Myg.configuration&.es6
      template 'javascripts/action-button.js',
               "#{javascripts_dir}/action-button.js"
      template 'javascripts/button.js', "#{javascripts_dir}/button.js"
      template 'javascripts/card.js', "#{javascripts_dir}/card.js"
      template 'javascripts/checkbox.js', "#{javascripts_dir}/checkbox.js"
      template 'javascripts/dialog.js', "#{javascripts_dir}/dialog.js"
      template 'javascripts/drawer.js', "#{javascripts_dir}/drawer.js"
      template 'javascripts/dropdown.js', "#{javascripts_dir}/dropdown.js"
      template 'javascripts/footer.js', "#{javascripts_dir}/footer.js"
      template 'javascripts/form-field.js', "#{javascripts_dir}/form-field.js"
      template 'javascripts/menu.js', "#{javascripts_dir}/menu.js"
      template 'javascripts/modal.js', "#{javascripts_dir}/modal.js"
      template 'javascripts/progress.js', "#{javascripts_dir}/progress.js"
      template 'javascripts/radio.js', "#{javascripts_dir}/radio.js"
      template 'javascripts/select.js', "#{javascripts_dir}/select.js"
      template 'javascripts/sidebar.js', "#{javascripts_dir}/sidebar.js"
      template 'javascripts/slide.js', "#{javascripts_dir}/slide.js"
      template 'javascripts/slider.js', "#{javascripts_dir}/slider.js"
      template 'javascripts/tabs.js', "#{javascripts_dir}/tabs.js"
      template 'javascripts/text.js', "#{javascripts_dir}/text.js"
      template 'javascripts/theme.js', "#{javascripts_dir}/theme.js"
      template 'javascripts/titlebar.js', "#{javascripts_dir}/titlebar.js"
      template 'javascripts/toast.js', "#{javascripts_dir}/toast.js"
      template 'javascripts/toolbar.js', "#{javascripts_dir}/toolbar.js"
      template 'javascripts/tooltip.js', "#{javascripts_dir}/tooltip.js"
    end
    # rubocop:enable Metrics/AbcSize
    # rubocop:enable Metrics/MethodLength

    private

    def stylesheets_dir
      stylesheets_dir
    end

    def javascripts_dir
      javascripts_dir
    end
  end
end
