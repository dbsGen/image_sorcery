lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'bundler/version'

Gem::Specification.new do |s|
  s.name           = "image_sorcery-myboka"
  s.version        = "1.1.1"
  s.platform       = Gem::Platform::RUBY
  s.authors        = ["Eric Rafaloff", "Guy Boertje"]
  s.email          = ["hello@ericrafaloff.com", "guy@musicglue.com"]
  s.homepage       = "https://github.com/EricR/image_sorcery"
  s.summary        = "A ruby ImageMagick/GraphicsMagick library that doesn't suck"
  s.description    = "A ruby ImageMagick/GraphicsMagick library that doesn't suck"
  s.files          = Dir.glob("{lib}/**/*") + %w(README.markdown)
  s.require_path   = 'lib'
  s.requirements   = "ImageMagick or GraphicsMagick"

  s.add_development_dependency('rspec', '~> 2.12.0')
  s.add_development_dependency('rake','~> 10.0.2')
end
