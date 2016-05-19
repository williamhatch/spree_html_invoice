# coding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_html_invoice'
  s.version     = '3.2.0.alpha'
  s.summary     = 'Print invoices from a spree order'
  s.required_ruby_version = '>= 2.1.0'
  s.authors = ["Torsten Ruger", "Chandramohan Rangaswamy"]

  s.files        = Dir['README.markdown', 'lib/**/*', 'app/**/*', 'config/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '~> 3.2.0.alpha')

end