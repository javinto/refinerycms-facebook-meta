module Refinery
  module FacebookMeta
    include ActiveSupport::Configurable

    config_accessor :fb_app_id

    self.fb_app_id = nil
  end
end
