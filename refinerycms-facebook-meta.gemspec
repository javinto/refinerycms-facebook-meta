$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "refinerycms-facebook-meta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "refinerycms-facebook-meta"
  s.version     = RefinerycmsFacebookMeta::VERSION
  s.authors     = ["Javinto"]
  s.email       = ["info@javinto.nl"]
  s.homepage    = %q{http://github.com/javinto/refinerycms-facebook-meta}
  s.summary     = %q{Facebook meta info extension for Refinery CMS}
  s.description = %q{Add Facebook OG meta information to Refinery CMS pages and extensions}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'refinerycms', '~> 3.0.0'
  s.add_dependency 'seo_meta', '~> 2.0.0'
end