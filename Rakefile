require 'rubygems'
require 'rake/gempackagetask'
require 'rubygems/specification'
require 'date'
require 'spec/rake/spectask'
require 'tasks/redis.tasks'

begin
  require 'jeweler'

  Jeweler::Tasks.new do |s|
    s.name = "redis-rb"
    s.summary = "Ruby client library for redis key value storage server"
    s.description = s.summary
    s.authors = ['Ezra Zygmuntowicz', 'Taylor Weibley', 'Matthew Clark', 'Brian McKinney', 'Salvatore Sanfilippo', 'Luca Guidi']
    s.email = "ez@engineyard.com"
    s.homepage = "http://github.com/ezmobius/redis-rb"
    s.has_rdoc = true
    s.extra_rdoc_files = ["LICENSE"]
    s.require_path = 'lib'
    s.autorequire = 'redis'
    s.files = %w(LICENSE README.markdown Rakefile) + Dir.glob("{lib,tasks,spec}/**/*")
    s.add_dependency "rspec"
  end
rescue LoadError
  puts "Jewler is not installed, gem publishing tasks will not be available"
end

###############################

task :default => :spec

desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(-fs --color)
end

desc "Run all examples with RCov"
Spec::Rake::SpecTask.new(:rcov) do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = true
end
