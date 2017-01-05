module Refinery
  module FacebookMeta
    include ActiveSupport::Configurable

    config_accessor :fb_app_id, :og_types, :skd_locales

    self.fb_app_id = nil
    self.og_types = %w{ website article}
    self.skd_locales = {es: 'es_LA', pt: 'pt_BR', ja: 'ja_JP'}
  end
end
