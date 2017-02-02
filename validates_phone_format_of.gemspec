$:.unshift File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'validates_phone_format_of'
  s.summary = "Validate phone numbers against E.164 format with this Ruby on Rails gem"
  s.description = s.summary
  s.homepage = 'https://github.com/jonathantribouharet/validates_phone_format_of'
  s.version = '1.0.1'
  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.authors = ['Jonathan TRIBOUHARET']
  s.email = 'jonathan.tribouharet@gmail.com'
  s.license = 'MIT'
  s.platform = Gem::Platform::RUBY
end
