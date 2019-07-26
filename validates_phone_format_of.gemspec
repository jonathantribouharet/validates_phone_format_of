$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'validates_phone_format_of'
  spec.version       = '2.0.0'
  spec.authors       = ['Jonathan VUKOVICH-TRIBOUHARET']
  spec.email         = ['jonathan.tribouharet@gmail.com']

  spec.summary       = 'Validate phone numbers against E.164 format with this Ruby on Rails gem'
  spec.description   = 'Validate phone numbers against E.164 format with this Ruby on Rails gem'
  spec.homepage      = 'https://github.com/jonathantribouharet/validates_phone_format_of'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0")
  end
  spec.require_paths = ['lib']

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.6'
end
