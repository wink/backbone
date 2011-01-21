# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-ssl-enforcer}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tobias Matthies", "Thibaud Guillaume-Gentil"]
  s.date = %q{2010-11-16}
  s.description = %q{Rack::SslEnforcer is a simple Rack middleware to enforce ssl connections}
  s.email = ["tm@mit2m.de", "thibaud@thibaud.me"]
  s.files = ["lib/rack/rack-ssl-enforcer.rb", "lib/rack/ssl-enforcer/version.rb", "lib/rack/ssl-enforcer.rb", "LICENSE", "README.rdoc"]
  s.homepage = %q{http://github.com/tobmatth/rack-ssl-enforcer}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rack-ssl-enforcer}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A simple Rack middleware to enforce SSL}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<guard>, [">= 0.2.1"])
      s.add_development_dependency(%q<guard-test>, ["~> 0.1.3"])
      s.add_development_dependency(%q<guard-bundler>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.5"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.1.1"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.11.3"])
      s.add_development_dependency(%q<rack>, ["~> 1.2.0"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.4"])
    else
      s.add_dependency(%q<guard>, [">= 0.2.1"])
      s.add_dependency(%q<guard-test>, ["~> 0.1.3"])
      s.add_dependency(%q<guard-bundler>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.5"])
      s.add_dependency(%q<test-unit>, ["~> 2.1.1"])
      s.add_dependency(%q<shoulda>, ["~> 2.11.3"])
      s.add_dependency(%q<rack>, ["~> 1.2.0"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.4"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0.2.1"])
    s.add_dependency(%q<guard-test>, ["~> 0.1.3"])
    s.add_dependency(%q<guard-bundler>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.5"])
    s.add_dependency(%q<test-unit>, ["~> 2.1.1"])
    s.add_dependency(%q<shoulda>, ["~> 2.11.3"])
    s.add_dependency(%q<rack>, ["~> 1.2.0"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.4"])
  end
end
