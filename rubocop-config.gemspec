# frozen_string_literal: true

require_relative "lib/rubocop/config/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-config"
  spec.version       = Rubocop::Config::VERSION
  spec.authors       = ["Alexey Ivanov"]
  spec.email         = ["alexey.ivanov@erlyvideo.ru"]

  spec.summary       = "Rubocop config file and additional gems."
  spec.description   = "Rubocop config file and additional gems."
  spec.homepage      = "https://git.erlyvideo.ru/web/rubocop-config"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-rails"
  spec.add_dependency "rubocop-performance"
  spec.add_dependency "rubocop-rspec"
  spec.add_dependency "rubocop-rails_config"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
