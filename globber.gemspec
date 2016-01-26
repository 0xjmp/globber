$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "globber/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "globber"
  s.version     = Globber::VERSION
  s.authors     = ["Jake Peterson"]
  s.email       = ["jsksma2@gmail.com"]
  s.homepage    = "https://github.com/jakenberg/globber"
  s.summary     = "Utilize the ruby on rails environment backed by any remote API!"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "virtus", "~> 1.0"
  s.add_dependency "httparty", "~> 0.13"
end
