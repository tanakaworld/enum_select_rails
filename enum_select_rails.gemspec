$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enum_select_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "enum_select_rails"
  s.version = EnumSelectRails::VERSION
  s.authors = ["tanakaworld"]
  s.email = ["yutaro.tanaka.world@gmail.com"]
  s.homepage = "https://tanakaworld.github.io/enum_select_rails"
  s.summary = "A form helper for the enum field of Rails model."
  s.description = "A form helper for the enum field of Rails model."
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
