# frozen_string_literal: true

require 'rails/generators'
require 'rails/generators/migration'

module Myg
  class TabsGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.join File.dirname(__dir__), 'templates/tabs'
    desc 'Generate a Myg tabs template'

    class_option :controller, desc: 'Tabs controller', type: :string,
                              aliases: '-c'
    class_option :method_names, desc: 'Tab method names', type: :array,
                                aliases: '-m'

    def create_templates
      template '_tabs.html.erb', "app/views/#{options[:controller]}/"\
                                 '_tabs.html.erb'
      options[:method_names]&.each do |name|
        @name = name[:name].underscore
        template 'tab.html.erb', "app/views/#{options[:controller]}/"\
                                 "#{@name}.html.erb"
        template '_tab.html.erb', "app/views/#{options[:controller]}/"\
                                  "_#{@name}.html.erb"
      end
    end
  end
end
