module Myg

    class << self
        attr_accessor :configuration
    end

    def self.configure
        self.configuration ||= Configuration.new
        yield configuration
    end

    class Configuration

        attr_accessor :assets_dir
        attr_accessor :themes
        attr_accessor :theme
        attr_accessor :theme_auto
        attr_accessor :theme_day
        attr_accessor :theme_night
        attr_accessor :theme_day_time
        attr_accessor :theme_night_time

        def initialize
            @assets_dir = 'app/assets/stylesheets/myg'
            @themes = ['default']
            @theme = 'default'
            @theme_auto = false
            @theme_day = 'light'
            @theme_night = 'dark'
            @theme_day_time = '6:00 am'
            @theme_night_time = '6:00 pm'
        end

    end
end
