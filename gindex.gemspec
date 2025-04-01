require_relative "lib/gindex/version"

Gem::Specification.new do |spec|
  spec.name          = "gindex"
  spec.version       = Gindex::VERSION
  spec.summary       = "Instant concurrent indexes for Rails"
  spec.homepage      = "https://github.com/ankane/gindex"
  spec.license       = "MIT"

  spec.author        = "Andrew Kane"
  spec.email         = "andrew@ankane.org"

  spec.files         = Dir["*.{md,txt}", "{lib}/**/*"]
  spec.require_path  = "lib"

  spec.required_ruby_version = ">= 3.2"

  spec.add_dependency "railties", ">= 7.1"
end
