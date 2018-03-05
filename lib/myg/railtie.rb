require 'rails/railtie'

module Myg
    class Railtie < Rails::Railtie

        initializer 'myg.mozaic' do
            Mozaic.configure do |config|
                config.define_component 'myg/button'
                config.define_component 'myg/checkbox'
                config.define_component 'myg/drawer'
                config.define_component 'myg/form-field'
                config.define_component 'myg/input'
                config.define_component 'myg/label'
                config.define_component 'myg/radio'
                config.define_component 'myg/slider', discrete: false, disabled: false, value: 0, min: 0, max: 50, label: 'Select value'
                config.define_component 'myg/switch'
                config.define_component 'myg/tabs', async: false
                config.define_component 'myg/toast'
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
