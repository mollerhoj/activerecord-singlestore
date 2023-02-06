# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "activerecord-singlestore"
  spec.version       = '1.0.0'
  spec.authors       = ["Jens Dahl Mollerhoj"]
  spec.email         = ["mollerhoj3@gmail.com"]

  spec.summary       = "ActiveRecord SinglestoreAdapter"
  spec.description   = "The ActiveRecod SinglestoreAdapter is an ActiveRecord connection adapter based on the Mysql2 adapter."
  spec.homepage      = "https://github.com/mollerhoj/activerecord-single-store"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = ::Dir.glob("lib/**/*.rb") + ::Dir.glob("*.rdoc")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "activerecord", ">= 6.0.0"
  spec.add_dependency "mysql2", ">= 0.4.4"
end
