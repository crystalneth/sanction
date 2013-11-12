# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
puts $LOAD_PATH
require 'sanction/version'
Sanction::VERSION

Gem::Specification.new do |spec|
  spec.name          = "sanction"
  spec.version       = Sanction::VERSION::STRING
  spec.authors       = ["Alex Neth", "Matthew Vermaak", "Peter Leonhardt"]
  spec.email         = ["alex@crystalneth.com"]
  spec.description   = %q{Flexible object and role permission management system.}
  spec.summary       = %q{Flexible object and role permission management system.}
  spec.homepage      = "https://github.com/crystalneth/sanction"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
