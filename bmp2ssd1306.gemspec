# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bmp2ssd1306/version'

Gem::Specification.new do |spec|
  spec.name          = 'bmp2ssd1306'
  spec.version       = BMP2SSD1306::VERSION
  spec.authors       = ['Naoto Takai']
  spec.email         = ['takai@recompile.net']

  spec.summary       = 'BMP2SSD1306 is an image converter for SSD1306 OLED.'
  spec.description   = 'BMP2SSD1306 is an image converter for SSD1306 OLED. It converts the BMP image into the file that has the memory layout of the SSD1306.'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rmagick'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
