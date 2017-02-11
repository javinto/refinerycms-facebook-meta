module Refinery
  module FacebookMeta
    include ActiveSupport::Configurable

    config_accessor :fb_app_id, :og_types, :sdk_locales

    self.fb_app_id = nil
    self.og_types = %w{ website article}
    self.sdk_locales = {en: 'en_US', es: 'es_LA', pt: 'pt_BR', ja: 'ja_JP', nl: 'nl_NL'}
  end
end
