# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{barista}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Darcy Laycock"]
  s.date = %q{2010-12-31}
  s.description = %q{Barista provides simple, integrated support for CoffeeScript in Rack and Rails applications.

Much like Compass does for Sass, It also provides Frameworks (bundleable code which can be shared via Gems).

Lastly, it also provides a Rack Application (which can be used to server compiled code), a around_filter-style precompiler (as Rack middleware) and simple helpers for rails and Haml.

For more details, please see the the README file bundled with it.}
  s.email = %q{sutto@sutto.net}
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = [".document", ".rspec", ".rvmrc.example", "DESCRIPTION", "Gemfile", "Gemfile.lock", "LICENSE", "README.md", "Rakefile", "barista.gemspec", "lib/barista.rb", "lib/barista/compiler.rb", "lib/barista/extensions.rb", "lib/barista/filter.rb", "lib/barista/framework.rb", "lib/barista/haml_filter.rb", "lib/barista/helpers.rb", "lib/barista/hooks.rb", "lib/barista/integration.rb", "lib/barista/integration/rails2.rb", "lib/barista/integration/rails3.rb", "lib/barista/integration/sinatra.rb", "lib/barista/server.rb", "lib/barista/tasks/barista.rake", "lib/barista/version.rb", "lib/generators/barista/install/USAGE", "lib/generators/barista/install/install_generator.rb", "lib/generators/barista/install/templates/initializer.rb", "lib/generators/barista_install_generator.rb", "spec/barista_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/Sutto/barista}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple, transparent coffeescript integration for Rails and Rack applications.}
  s.test_files = ["spec/barista_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script>, ["~> 2.1.1"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.1"])
      s.add_development_dependency(%q<rr>, ["~> 1.0"])
    else
      s.add_dependency(%q<coffee-script>, ["~> 2.1.1"])
      s.add_dependency(%q<jeweler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.1"])
      s.add_dependency(%q<rr>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<coffee-script>, ["~> 2.1.1"])
    s.add_dependency(%q<jeweler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.1"])
    s.add_dependency(%q<rr>, ["~> 1.0"])
  end
end
