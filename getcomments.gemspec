lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'getcomments/version'

Gem::Specification.new do |s|
  s.name        = 'getcomments'
  s.version     = GetComments::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Extract comments from a Ruby source file"
  s.description = "Extract comments from a Ruby source file"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/DannyBen/getcomments'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.0.0"

  # s.add_runtime_dependency '...', '~> 0.1'

  s.add_development_dependency 'runfile', '~> 0.8'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'rdoc', '~> 5.0'
  s.add_development_dependency 'pry', '~> 0.10'
  s.add_development_dependency 'pry-doc', '~> 0.10'
  s.add_development_dependency 'simplecov', '~> 0.13'
  s.add_development_dependency 'yard', '~> 0.8'
end
