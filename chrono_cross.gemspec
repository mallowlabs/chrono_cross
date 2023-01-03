# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chrono_cross/version'

Gem::Specification.new do |spec|
  spec.name        = 'chrono_cross'
  spec.version     = ChronoCross::VERSION

  spec.authors     = ['mallowlabs']
  spec.email       = ['mallowlabs@gmail.com']
  spec.description = 'Cron like task scheduler.'
  spec.summary     = spec.description
  spec.homepage    = 'https://github.com/mallowlabs/chrono_cross'
  spec.licenses    = ['MIT']

  spec.add_dependency 'chrono', '~> 0.0.4'
  spec.add_development_dependency 'bundler'

  spec.files = %w(README.md chrono_cross.gemspec) + Dir['lib/**/*.rb']

  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'
end
