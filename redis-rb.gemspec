# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{redis-rb}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ezra Zygmuntowicz", "Taylor Weibley", "Matthew Clark", "Brian McKinney", "Salvatore Sanfilippo", "Luca Guidi"]
  s.autorequire = %q{redis}
  s.date = %q{2009-07-04}
  s.default_executable = %q{distredis}
  s.description = %q{Ruby client library for redis key value storage server}
  s.email = %q{ez@engineyard.com}
  s.executables = ["distredis"]
  s.extra_rdoc_files = [
    "LICENSE"
  ]
  s.files = [
    "LICENSE",
     "README.markdown",
     "Rakefile",
     "lib/dist_redis.rb",
     "lib/hash_ring.rb",
     "lib/pipeline.rb",
     "lib/redis.rb",
     "lib/redis/raketasks.rb",
     "spec/redis_spec.rb",
     "spec/spec_helper.rb",
     "tasks/redis.tasks.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/ezmobius/redis-rb}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby client library for redis key value storage server}
  s.test_files = [
    "spec/redis_spec.rb",
     "spec/spec_helper.rb",
     "examples/basic.rb",
     "examples/incr-decr.rb",
     "examples/list.rb",
     "examples/sets.rb",
     "examples/test_server.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
