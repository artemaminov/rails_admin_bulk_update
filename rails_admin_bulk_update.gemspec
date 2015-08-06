$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_bulk_update/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_bulk_update"
  s.version     = RailsAdminBulkUpdate::VERSION
  s.authors     = ["Artem Aminov"]
  s.email       = ["artemaminov@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminBulkUpdate."
  s.description = "TODO: Description of RailsAdminBulkUpdate."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
end
