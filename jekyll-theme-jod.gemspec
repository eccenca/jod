# coding: utf-8
RELEASE_VERSION = case
  when ENV['VERSION'] then ENV['VERSION']
  else
    version = `git describe --tags --dirty --always`
    # if Gem::Version.new(ARGV[0]).prerelease? then puts Gem::Version.new(Gem::Version.new(ARGV[0].split('-')[0]).bump().to_s + '-' + ARGV[0].split('-')[1..].join('.')) else puts Gem::Version.new(ARGV[0]) end
    if Gem::Version.new(version).prerelease? then
      Gem::Version.new(Gem::Version.new(version.split('-')[0]).bump().to_s + '-' + version.split('-')[1..].join('.'))
    else
      Gem::Version.new(version)
    end
end

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-jod"
  spec.version       = RELEASE_VERSION.to_s
  spec.authors       = ["Sebastian Tramp", "Natanael Arndt"]
  spec.email         = ["sebastian.tramp@eccenca.com", "arndtn@gmail.com"]

  spec.summary       = %q{The JOD theme generates documentation web pages from Ontology turtle documents using Jekyll-RDF extension.}
  spec.homepage      = "https://github.com/eccenca/jod"
  spec.license       = "MIT"

  spec.files         = Dir['_layouts/*'] + Dir['_includes/*'] + Dir['_data/*'] + Dir['_config.yml'] + Dir['LICENSE'] + Dir['README*']

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-rdf", "~> 4.0"
  spec.add_runtime_dependency "liquid-md5", "~> 0.0.3"
  spec.add_runtime_dependency "webrick", "~> 1.7"

  spec.add_development_dependency "bundler", "~> 3.3"
  spec.add_development_dependency "rake", "~> 13.0", ">= 13.0.6"
end
