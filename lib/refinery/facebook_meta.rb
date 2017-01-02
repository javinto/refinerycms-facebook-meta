require 'refinerycms-core'
require 'globalize'

module SeoMeta
  class << self

    # Note: we override SEO attributes here, no adding. So if SeoMeta attributes changes, change it here as well.
    def attributes
      @@attributes ||= {
        :browser_title => :string,
        :meta_description => :text,
        :og_title => :string,
        :og_description => :text,
        :og_image_id => :integer,
        :og_image => :integer
      }
    end
  end
end

module Refinery
  autoload :FacebookMetaGenerator, 'generators/refinery/facebook_meta_generator'

  module FacebookMeta

    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end

    require 'refinery/facebook_meta/engine'
  end
end
