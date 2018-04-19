
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pricegem/version"

Gem::Specification.new do |spec|
  spec.name          = "pricegem"
  spec.version       = Pricegem::VERSION
  spec.authors       = ["marknci"]
  spec.email         = ["m.arkhayden@hotmail.com"]

  spec.summary       = %q{price gem}
  spec.description   = %q{price gem}
  spec.homepage      = "https://rubygems.org/gems/pricegem"

 

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
