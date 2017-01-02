require 'refinery/facebook_meta/configuration'

module Refinery
  module FacebookMeta
    class Engine < Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery

      engine_name :refinery_facebook_meta

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = 'facebook_meta'
          plugin.pathname = root
          plugin.hide_from_menu = true
        end
      end

      config.after_initialize do
        Refinery.register_engine Refinery::FacebookMeta
      end
    end
  end
end
