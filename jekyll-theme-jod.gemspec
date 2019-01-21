# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-jod"
  spec.version       = "0.1.8"
  spec.authors       = ["Sebastian Tramp", "Natanael Arndt"]
  spec.email         = ["sebastian.tramp@eccenca.com", "arndtn@gmail.com"]

  spec.summary       = %q{The JOD theme generates documentation web pages from Ontology turtle documents using Jekyll-RDF extension.}
  spec.homepage      = "https://github.com/eccenca/jod"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(_layouts|_includes|_data/prefixes.pref|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.5"
  spec.add_runtime_dependency "jekyll-rdf", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
