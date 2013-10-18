# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shop_finder/version'

Gem::Specification.new do |spec|
  spec.name          = "shop_finder"
  spec.version       = ShopFinder::VERSION
  spec.authors       = ["Dmitry Penkin"]
  spec.email         = ["dr.demax@gmail.com"]
  spec.description   = "Image url extractor from online shops"
  spec.summary       = "Image url extractor from online shops"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "mechanize", "~> 2.5.1"
  spec.add_development_dependency "active_support"

end
