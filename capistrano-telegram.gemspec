# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "capistrano-telegram"
  spec.version = '1.0.4'
  spec.authors = ["Mattia Malonni"]
  spec.email = ["mattia.malonni@gmail.com"]
  spec.summary = %q{Notify Capistrano deployment to Telegram.}
  spec.description = %q{Notify Capistrano deployment to Telegram.}
  spec.homepage = "https://github.com/MattiaMalonni/capistrano-telegram"
  spec.license = "MIT"

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.8.1'
  spec.add_dependency 'telegram-bot-ruby', "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
