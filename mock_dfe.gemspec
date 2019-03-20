
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mock_dfe/version"

Gem::Specification.new do |spec|
  spec.name          = "mock_dfe"
  spec.version       = MockDfe::VERSION
  spec.authors       = ["Carlos Palha"]
  spec.email         = ["carlao_epalha@hotmail.com"]

  spec.summary       = %q{Generates Mock DFe data.}
  spec.description   = %q{Generates Xml examples of different Brazilian tax documents. }
  spec.homepage      = "https://github.com/taxweb/mock_dfe"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'faker', "~> 1.9.0"
  spec.add_dependency 'cpf_cnpj', '~> 0.5.0'
  spec.add_dependency 'nokogiri', '~> 1.8'
end