require_relative 'lib/handrails/version'

Gem::Specification.new do |spec|
  spec.name          = "handrails"
  spec.version       = Handrails::VERSION
  spec.authors       = ["Collin Jilbert"]
  spec.email         = ["cjilbert504@gmail.com"]

  spec.summary       = %q{A Rack-based Web Framework}
  spec.description   = %q{A Rack-based Web Framework, built by hand with gnar.}
  spec.homepage      = "https://github.com/cjilbert504/handrails"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "rack"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"
end
