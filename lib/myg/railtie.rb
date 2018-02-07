require 'rails/railtie'

module Myg
    class Railtie < Rails::Railtie

        initializer 'myg.mozaic' do
            Mozaic.configure do |config|
                config.define_component 'myg/checkbox', class_name: false, label: false, checked: false, disabled: false
                config.define_component 'myg/drawer'
                config.define_component 'myg/form-field'
                config.define_component 'myg/radio', class_name: false, label: false, checked: false, disabled: false
                config.define_component 'myg/toolbar'
            end
        end

        initializer 'myg.action_controller' do
            ActiveSupport.on_load :action_controller do
                include Myg::ThemeHelper
            end
        end

    end
end
