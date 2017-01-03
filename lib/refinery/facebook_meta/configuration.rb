module Refinery
  module FacebookMeta
    include ActiveSupport::Configurable

    config_accessor :fb_app_id, :og_types

    self.fb_app_id = nil
    self.og_types = %w{ website article}
  end
end
