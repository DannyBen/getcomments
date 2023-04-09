lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'getcomments/version'

Gem::Specification.new do |s|
  s.name        = 'getcomments'
  s.version     = GetComments::VERSION
  s.summary     = 'Extract comments from a Ruby source file'
  s.description = 'Extract comments from a Ruby source file'
  s.authors     = ['Danny Ben Shitrit']
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/DannyBen/getcomments'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.0'
  s.metadata['rubygems_mfa_required'] = 'true'
end
