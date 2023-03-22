require "active_support"

module Packs
  module Rails
    module Integrations
      autoload :FactoryBot, "packs/rails/integrations/factory_bot"
      autoload :Rails, "packs/rails/integrations/rails"
      autoload :RSpec, "packs/rails/integrations/rspec"
      autoload :I18n, "packs/rails/integrations/i18n"
    end
  end
end
