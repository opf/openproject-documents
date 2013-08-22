# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/documents/version'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-documents"
  s.version     = OpenProject::Documents::VERSION
  s.authors     = "Finn GmbH"
  s.email       = "info@finn.de"
  s.homepage    = "https://www.openproject.org/projects/documents"
  s.summary     = "An OpenProject plugin to allow creation of documents in projects"
  s.description = "An OpenProject plugin to allow creation of documents in projects"
  s.license     = "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md)

  s.add_dependency "rails", "~> 3.2.9"

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'cucumber-rails'
  s.add_development_dependency 'database_cleaner'
end
