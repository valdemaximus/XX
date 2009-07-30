require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('xx', '0.1.1') do |p|
  p.description    = "Extensions of standard ruby objects"
  p.url            = "http://github.com/valdemaximus/xx"
  p.author         = "Tom Johnson"
  p.email          = "valde.maximus@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each