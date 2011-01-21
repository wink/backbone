# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{autotest-rails-pure}
  s.version = "4.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis"]
  s.date = %q{2010-11-06}
  s.files = [".autotest", "History.txt", "Rakefile", "Readme.md", "VERSION", "autotest-rails-pure.gemspec", "lib/autotest/discover.rb", "lib/autotest/fixtures.rb", "lib/autotest/migrate.rb", "lib/autotest/rails.rb", "test/rails_test.rb"]
  s.homepage = %q{http://github.com/grosser/autotest-rails}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Autotest for Test::Unit on Rails, including plugins for migrations and fixtures.}
  s.test_files = ["test/rails_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
