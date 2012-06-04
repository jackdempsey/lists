$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lists/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lists"
  s.version     = Lists::VERSION
  s.authors     = ["Jack Dempsey"]
  s.email       = ["jack.dempsey@gmail.com"]
  s.homepage    = "https://github.com/jackdempsey/lists"
  s.summary     = "Simple engine to manage lists"
  s.description = "Simple engine to manage lists"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"
  s.add_dependency "haml-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
