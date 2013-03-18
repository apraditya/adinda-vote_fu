$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "adinda-vote_fu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adinda-vote_fu"
  s.version     = AdindaVoteFu::VERSION
  s.authors     = ["Peter Jackson", "Cosmin Radoi", "Bence Nagy", "Rob Maddox", "Adinda Praditya"]
  s.email       = ["apraditya@gmail.com"]
  s.homepage    = "https://github.com/apraditya/adinda-vote_fu"
  s.summary     = "Rails 3.2 support for vote_fu gem, a voting for ActiveRecord with multiple vote sources and advanced features."
  s.description = "VoteFu provides the ability to have multiple voting entities on an arbitrary number of models in ActiveRecord."

  s.rubyforge_project = "adinda-vote_fu"

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")

  s.require_path = ["lib"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spork"
end
