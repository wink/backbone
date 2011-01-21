# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{steak}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luismi Cavall\303\251"]
  s.date = %q{2011-01-14}
  s.description = %q{If you are not in Rails but use RSpec, then Steak is just some aliases providing you with the language of acceptance testing (feature, scenario, background). If you are in Rails, you also have a couple of generators, a rake task and full Rails integration testing (meaning Webrat support, for instance)}
  s.email = %q{luismi@lmcavalle.com}
  s.files = ["MIT-LICENSE", "Rakefile", "README.rdoc", "lib/rspec-1/steak.rb", "lib/rspec-2/rails/generators/install_generator.rb", "lib/rspec-2/rails/generators/spec_generator.rb", "lib/rspec-2/rails/generators/templates/acceptance_helper.rb", "lib/rspec-2/rails/generators/templates/acceptance_spec.rb", "lib/rspec-2/rails/generators/templates/helpers.rb", "lib/rspec-2/rails/generators/templates/paths.rb", "lib/rspec-2/rails/railtie.rb", "lib/rspec-2/rails/tasks/steak.rake", "lib/rspec-2/steak.rb", "lib/steak.rb", "spec/acceptance/rspec-1/acceptance_helper.rb", "spec/acceptance/rspec-1/acceptance_spec_generator_spec.rb", "spec/acceptance/rspec-1/basic_spec.rb", "spec/acceptance/rspec-1/rails_spec.rb", "spec/acceptance/rspec-1/steak_generator_spec.rb", "spec/acceptance/rspec-2/acceptance_helper.rb", "spec/acceptance/rspec-2/basic_spec.rb", "spec/acceptance/rspec-2/rails_spec.rb", "spec/acceptance/rspec-2/steak_install_generator_spec.rb", "spec/acceptance/rspec-2/steak_spec_generator_spec.rb", "generators/acceptance_spec/acceptance_spec_generator.rb", "generators/acceptance_spec/templates/acceptance_spec.rb", "generators/acceptance_spec/USAGE", "generators/steak/steak_generator.rb", "generators/steak/templates/acceptance_helper.rb", "generators/steak/templates/helpers.rb", "generators/steak/templates/paths.rb", "generators/steak/templates/steak.rake", "generators/steak/USAGE"]
  s.homepage = %q{http://github.com/cavalle/steak}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Minimalist acceptance testing on top of RSpec}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 1.3"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.0.0"])
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<webrat>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3"])
      s.add_dependency(%q<rspec-rails>, [">= 2.0.0"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<webrat>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3"])
    s.add_dependency(%q<rspec-rails>, [">= 2.0.0"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<webrat>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
  end
end
