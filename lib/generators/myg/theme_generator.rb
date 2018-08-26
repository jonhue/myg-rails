# frozen_string_literal: true

require 'rails/generators'
require 'rails/generators/migration'

module Myg
  class ThemeGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.join File.dirname(__dir__), 'templates/theme'
    desc 'Add Myg theme'

    class_option :name, desc: 'Theme name', type: :string, aliases: '-n'

    def create_assets
      template 'stylesheets/_theme.scss.erb',
               "#{Myg.configuration.stylesheets_dir}/theme/"\
               "_#{options[:name]}.scss"
    end
  end
end
