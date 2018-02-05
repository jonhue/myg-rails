module Myg
    module ThemeHelper

        def theme theme = nil
            theme ||= cookies[:theme] || Myg.configuration.theme
            if Myg.configuration.auto && theme == 'auto'
                if Time.now < Time.parse(Myg.configuration.theme_day_time) || Time.now > Time.parse(Myg.configuration.theme_night_time)
                    theme = Myg.configuration.theme_day
                else
                    theme = Myg.configuration.theme_night
                end
            end
            theme
        end

        def set_theme theme
            cookies[:theme] = theme
            theme
        end

        def theme_class
            begin
                "myg-theme--#{current_theme}"
            rescue NoMethodError
                "myg-theme--#{theme}"
            end
        end

        def theme_available? theme
            Myg.configuration.themes.include? theme
        end

    end
end
