# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "beerxml/version"

Gem::Specification.new do |s|
  s.name        = "beerxml"
  s.version     = Beerxml::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Palmer"]
  s.email       = ["brian@codekitchen.net"]
  s.homepage    = "https://github.com/codekitchen/beerxml"
  s.summary     = %{Library for parsing and generating beerxml (http://www.beerxml.com/)}
  s.description = %{Library for parsing and generating beerxml (http://www.beerxml.com/).\nMore than that, this library also contains various methods for doing calculations on beer ingredients and recipes, among other helpers.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "nokogiri"
  s.add_dependency "dm-core"
  s.add_dependency "dm-validations"

  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "yard"
end
