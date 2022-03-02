# -*- encoding: utf-8 -*-

=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

$:.push File.expand_path("../lib", __FILE__)
require "fastly/version"

Gem::Specification.new do |s|
  s.name        = "fastly"
  s.version     = Fastly::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fastly"]
  s.email       = ["oss@fastly.com"]
  s.homepage    = "https://github.com/fastly/fastly-ruby"
  s.summary     = "Fastly API Ruby Gem"
  s.description = "Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) "
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.executables   = []
  s.require_paths = ["lib"]
end
