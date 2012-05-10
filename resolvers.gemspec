$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "resolvers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "resolvers"
  s.version     = Resolvers::VERSION
  s.authors     = ["Jack Dempsey"]
  s.email       = ["jack.dempsey@gmail.com"]
  s.homepage    = "http://github.com/jackdempsey/resolvers"
  s.summary     = "A collection of custom Rails 3 View Resolvers"
  s.description = "A collection of custom Rails 3 View Resolvers"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
end
