# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tangshi/version'

Gem::Specification.new do |spec|
  spec.name = "tangshi"
  spec.version = Tangshi::VERSION
  spec.authors = ["adamshen"]
  spec.email = ["adam_ruby@126.com"]

  spec.summary = "database of tang poems"
  spec.description = "using active_record as orm"
  spec.homepage = "https://github.com/adamshen/tangshi"
  spec.license = "MIT"
  spec.files = Dir["lib/**/*"] + ["LICENSE.txt", "README.md"]

  spec.add_dependency("activerecord")
end
