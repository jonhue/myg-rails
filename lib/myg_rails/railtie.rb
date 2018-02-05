require 'rails/railtie'

module MygRails
    class Railtie < Rails::Railtie

        initializer 'myg-rails.mozaic' do
            Mozaic.configure do |config|
                config.define_component 'myg/checkbox', class_name: false, label: false, checked: false, disabled: false
                config.define_component 'myg/form-field'
                config.define_component 'myg/radio', class_name: false, label: false, checked: false, disabled: false
            end
        end

    end
end
