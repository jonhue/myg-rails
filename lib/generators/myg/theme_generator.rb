require 'rails/generators'
require 'rails/generators/migration'

class Myg::ThemeGenerator < Rails::Generators::Base

    include Rails::Generators::Migration

    source_root File.join File.dirname(__FILE__), '../templates/theme'
    desc 'Add Myg theme'

    class_option :name, desc: 'Theme name', type: :string, aliases: '-n'

    def create_assets
        template '_theme.scss.erb', "#{Myg.configuration.assets_dir}/theme/_#{options[:name]}.scss"
    end

end
