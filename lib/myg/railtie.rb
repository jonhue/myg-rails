require 'rails/railtie'

module Myg
    class Railtie < Rails::Railtie

        initializer 'myg.mozaic' do
            Mozaic.configure do |config|
                config.define_component 'myg/checkbox', class: '', label: false, checked: false, disabled: false do |options|
                    options[:class] << ' myg-checkbox'
                    options
                end
                config.define_component 'myg/drawer', class: '' do |options|
                    options[:type] = 'temporary'
                    options[:class] << ' myg-drawer'
                    options
                end
                config.define_component 'myg/form-field', class: '' do |options|
                    options[:class] << ' myg-form-field'
                    options
                end
                config.define_component 'myg/radio', class: '', label: false, checked: false, disabled: false do |options|
                    options[:class] << ' myg-radio'
                    options
                end
                config.define_component 'myg/toolbar', class: '' do |options|
                    options[:class] << ' myg-toolbar'
                    options
                end
            end
        end

        initializer 'myg.action_controller' do
            ActiveSupport.on_load :action_controller do
                include Myg::ThemeHelper
            end
        end

    end
end
