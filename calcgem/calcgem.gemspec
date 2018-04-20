
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "calcgem/version"

Gem::Specification.new do |spec|
  spec.name          = "calcgem"
  spec.version       = Calcgem::VERSION
  spec.authors       = ["marknci"]
  spec.email         = ["m.arkhayden@hotmail.com"]

  spec.summary       = %q{"A quick gem"}
  spec.description   = %q{"A quick gem"}
  spec.homepage      = "http://rubygems.org/gems/calcgem"

 

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
