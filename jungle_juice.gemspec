lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jungle_juice/version'

Gem::Specification.new do |s|
  s.name          = 'jungle_juice'
  s.version       = JungleJuice::Version
  s.date          = '2012-09-29'
  s.summary       = 'Little utility for traversing file paths with-in a ruby project.'
  s.description   = 'Tired of writing File.expand_path blahblah or Dir.dirname __FILE__ or even Rails.root.join "quote", "hell"? This may be your solution.'
  s.authors       = ['Jason Wall']
  s.email         = 'jason@thejayvm.ca'
  s.homepage      = 'http://github.com/thejayvm/jungle_juice'
  s.require_path  = 'lib'
  s.files         = Dir["README.md", '{lib,spec}/**/*.rb']

  s.test_files    = Dir['{spec}/**/*.rb']

  s.add_development_dependency "rspec", '~> 2.11'

end
