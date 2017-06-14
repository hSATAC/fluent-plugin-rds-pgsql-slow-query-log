lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-rds-pgsql-slow-query-log"
  spec.version       = "0.1.2"
  spec.authors       = ["hSATAC"]
  spec.email         = ["hSATAC@gmail.com"]
  spec.summary       = "Amazon RDS for PostgreSQL log input plugin with slow query support"
  spec.description   = "fluentd plugin for Amazon RDS for PostgreSQL log input with slow query support"
  spec.homepage      = "https://github.com/hSATAC/fluent-plugin-rds-pgsql-slow-query-log"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency "fluentd", [">= 0.14.2", "< 2"]
  spec.add_dependency "aws-sdk", [">= 2.3.22", "< 3"]

  spec.add_development_dependency "bundler", "~> 1.7"
end
