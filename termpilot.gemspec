# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'termpilot'
  s.version       = '0.1.0'
  s.authors       = ['Taylor Collins']
  s.email         = ['taylorcc33@gmail.com']

  s.summary       = 'A wrapper around ChatGPT to allow for prompts in the terminal.'
  s.description   = 'A wrapper around ChatGPT to allow for prompts in the terminal.'
  s.homepage      = 'https://github.com/taylorcc33/termpilot'
  s.license       = 'MIT'

  s.files         = Dir['lib/**/*', 'bin/**/*', 'README.md']
  s.executables   = ['termpilot']
  s.bindir        = 'bin'
  s.require_paths = ['lib']

  s.add_runtime_dependency 'ruby-openai', '~> 6.5.0'

  s.required_ruby_version = '>= 3.1.0'
end
