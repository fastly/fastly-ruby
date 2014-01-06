# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'fastly/gem_version'

Gem::Specification.new do |s|
  s.name        = "fastly"
  s.version     = Fastly::VERSION
  s.authors     = ["Fastly Inc"]
  s.license     = "MIT"
  s.email       = ["support@fastly.com"]
  s.homepage    = "http://github.com/fastly/fastly-ruby"
  s.summary     = %q{Client library for the Fastly acceleration system}
  s.description = %q{Client library for the Fastly acceleration system}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rake'
  s.add_dependency 'json'
  s.add_dependency 'curb', '>=0.7.15'
  s.add_dependency 'curb-fu', '>=0.6.1'
  s.add_development_dependency 'rdoc', '>=3.4'
end
