# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'found/you/version'

Gem::Specification.new do |spec|
  spec.name          = "found-you"
  spec.version       = Found::You::VERSION
  spec.authors       = ["Pierre FILSTROFF"]
  spec.email         = ["pfilstroff@gmail.com"]

  spec.summary       = "Found You (FY) server"
  spec.description   = "Found You (FY) server"
  spec.homepage      = "http://localhost"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'
  spec.add_runtime_dependency 'sqlite3'
  spec.add_runtime_dependency 'puma', '~> 3.0'
  spec.add_runtime_dependency 'sass-rails', '~> 5.0'
  spec.add_runtime_dependency 'uglifier', '>= 1.3.0'
  spec.add_runtime_dependency 'coffee-rails', '~> 4.2'
  spec.add_runtime_dependency 'jquery-rails'
  spec.add_runtime_dependency 'turbolinks', '~> 5'
  spec.add_runtime_dependency 'jbuilder', '~> 2.5'
  spec.add_runtime_dependency 'tzinfo-data'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'web-console'
  spec.add_development_dependency 'listen', '~> 3.0.5'
  spec.add_development_dependency 'spring'
  spec.add_development_dependency 'spring-watcher-listen', '~> 2.0.0'
end
