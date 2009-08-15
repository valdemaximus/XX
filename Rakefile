require 'rubygems'
require 'rake'
require 'jeweler'
require 'rdoc/rdoc'
require 'rake/rdoctask'

gem 'darkfish-rdoc'
require 'darkfish-rdoc'

Rake::RDocTask.new do |rdoc|
    rdoc.title    = "MyFantasticLibrary - a library of utter fantasticness"
    rdoc.rdoc_files.include 'README'

    rdoc.options += [
        '-SHN',
        '-f', 'darkfish',  # This is the important bit
      ]
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "xx"
    gemspec.summary = "Extensions of standard ruby objects"
    gemspec.description = "Extensions of standard ruby objects"
    gemspec.email = "valde.maximus@gmail.com"
    gemspec.homepage = "http://github.com/valdemaximus/xx"
    gemspec.authors = ["Tom Johnson"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

