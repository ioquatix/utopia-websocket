# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utopia/websocket/version'

Gem::Specification.new do |spec|
  spec.name          = "utopia-websocket"
  spec.version       = Utopia::WebSocket::VERSION
  spec.authors       = ["Samuel Williams"]
  spec.email         = ["samuel.williams@oriontransfer.co.nz"]
  spec.summary       = %q{A basic rack.hijack websocket implementation with synchronous execution within rack.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "websocket-driver", "~> 0.5.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "rake"
end
