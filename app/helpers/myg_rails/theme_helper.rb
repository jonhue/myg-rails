module MygRails
    module ThemeHelper

        def theme theme = nil
            theme ||= cookies[:theme] || MygRails.configuration.theme
            if MygRails.configuration.auto && theme == 'auto'
                if Time.now < Time.parse(MygRails.configuration.theme_day_time) || Time.now > Time.parse(MygRails.configuration.theme_night_time)
                    theme = MygRails.configuration.theme_day
                else
                    theme = MygRails.configuration.theme_night
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
            MygRails.configuration.themes.include? theme
        end

    end
end
