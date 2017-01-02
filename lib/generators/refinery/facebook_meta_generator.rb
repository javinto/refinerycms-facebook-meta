module Refinery
  class FacebookMetaGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def rake_db
      rake("refinery_facebook_meta:install:migrations")
    end

    def generate_facebook_meta_initializer
      template "config/initializers/refinery/facebook_meta.rb.erb", File.join(destination_root, "config", "initializers", "refinery", "facebook_meta.rb")
    end

  end
end
