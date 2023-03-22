# frozen_string_literal: true
# typed: true

module Packs
  module Rails
    module Integrations
      class I18n
        def initialize(app)
          return unless app.config.respond_to?(:i18n)

          Packs.all.each do |pack|
            app.config.i18n.load_path += Dir[::Rails.root.join("#{pack.relative_path}/config/locales", '**', '*.yml').to_s]
          end
        end
      end
    end
  end
end