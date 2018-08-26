# frozen_string_literal: true

module Myg
  module ThemeHelper
    def theme(theme: nil)
      theme ||= cookies[:theme] || Myg.configuration.theme
      theme = automatic_theme if Myg.configuration.auto && theme == 'auto'
      save_theme(theme: theme)
    end

    def save_theme(theme:)
      cookies[:theme] = theme
    end

    def theme_class
      "myg-theme--#{current_theme}"
    rescue NoMethodError
      "myg-theme--#{theme}"
    end

    def theme_available?(theme:)
      Myg.configuration.themes.include?(theme)
    end

    private

    def automatic_theme
      return Myg.configuration.theme_day if day?

      Myg.configuration.theme_night
    end

    def day?
      Time.zone.now < Time.zone.parse(Myg.configuration.theme_day_time) ||
        Time.zone.now > Time.zone.parse(Myg.configuration.theme_night_time)
    end
  end
end
