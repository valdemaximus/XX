# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{xx}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Johnson"]
  s.date = %q{2009-08-11}
  s.description = %q{Extensions of standard ruby objects}
  s.email = %q{valde.maximus@gmail.com}
  s.extra_rdoc_files = ["lib/extensions/array.rb", "lib/extensions/hash_key.rb", "lib/extensions/nil.rb", "lib/extensions/object.rb", "lib/extensions/pp_s.rb", "lib/extensions/string.rb", "lib/xx.rb", "README.rdoc"]
  s.files = ["init.rb", "lib/extensions/array.rb", "lib/extensions/hash_key.rb", "lib/extensions/nil.rb", "lib/extensions/object.rb", "lib/extensions/pp_s.rb", "lib/extensions/string.rb", "lib/xx.rb", "Manifest", "Rakefile", "README.rdoc", "xx.gemspec"]
  s.homepage = %q{http://github.com/valdemaximus/xx}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Xx", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{xx}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Extensions of standard ruby objects}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
