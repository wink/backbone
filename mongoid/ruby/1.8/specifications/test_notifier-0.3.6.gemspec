# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{test_notifier}
  s.version = "0.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nando Vieira"]
  s.date = %q{2010-11-18}
  s.description = %q{Display system notifications (dbus, growl and snarl) after
running tests. It works on Mac OS X, Linux and Windows. Powerful when used
with Autotest ZenTest gem for Rails apps.
}
  s.email = ["fnando.vieira@gmail.com"]
  s.files = [".gitignore", "README.rdoc", "Rakefile", "lib/test_notifier.rb", "lib/test_notifier/autotest.rb", "lib/test_notifier/rspec.rb", "lib/test_notifier/runner.rb", "lib/test_notifier/runner/autotest.rb", "lib/test_notifier/runner/rspec.rb", "lib/test_notifier/runner/spec.rb", "lib/test_notifier/runner/test_unit.rb", "lib/test_notifier/stats.rb", "lib/test_notifier/test_unit.rb", "lib/test_notifier/version.rb", "resources/error.png", "resources/fail.png", "resources/register-growl.scpt", "resources/success.png", "test/stats_test.rb", "test/test_helper.rb", "test/test_notifier_test.rb", "test_notifier.gemspec"]
  s.homepage = %q{http://rubygems.org/gems/test_notifier}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Display system notifications (dbus, growl and snarl) after running tests.}
  s.test_files = ["test/stats_test.rb", "test/test_helper.rb", "test/test_notifier_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<notifier>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<notifier>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<notifier>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
