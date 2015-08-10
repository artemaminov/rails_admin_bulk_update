$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_bulk_update/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_bulk_update"
  s.version     = RailsAdminBulkUpdate::VERSION
  s.authors     = ["Artem Aminov"]
  s.email       = ["artemaminov@gmail.com"]
  s.homepage    = "spaceheads.ru"
  s.summary     = "It's very specific version of bulk update You can't use it without hardcoded model “Offer” or as a guide to create your own specific"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "rails_admin", "~> 0.6.6"
end
