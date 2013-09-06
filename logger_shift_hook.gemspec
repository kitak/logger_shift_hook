# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logger_shift_hook/version'

Gem::Specification.new do |spec|
  spec.name          = "logger_shift_hook"
  spec.version       = LoggerShiftHook::VERSION
  spec.authors       = ["Keisuke KITA"]
  spec.email         = ["kei.kita2501@gmail.com"]
  spec.description   = %q{Hook when log shift}
  spec.summary       = %q{Hook when log shift}
  spec.homepage      = "https://github.com/kitak/logger_shift_hook"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
