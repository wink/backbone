# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{notifier}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nando Vieira"]
  s.date = %q{2010-12-25}
  s.description = %q{Send system notifications on several platforms with a simple and unified API. Currently supports Growl, Libnotify, OSD, KDE (Knotify and Kdialog) and Snarl}
  s.email = ["fnando.vieira@gmail.com"]
  s.files = [".gitignore", "Gemfile", "README.rdoc", "Rakefile", "lib/notifier.rb", "lib/notifier/growl.rb", "lib/notifier/kdialog.rb", "lib/notifier/knotify.rb", "lib/notifier/notify_send.rb", "lib/notifier/osd_cat.rb", "lib/notifier/placebo.rb", "lib/notifier/snarl.rb", "lib/notifier/version.rb", "notifier.gemspec", "resources/register-growl.scpt", "test/notifier_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://rubygems.org/gems/notifier}
  s.require_paths = ["lib"]
  s.requirements = ["Growl, Libnotify, OSD, KDE (Knotify and Kdialog) or Snarl"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Send system notifications on several platforms with a simple and unified API. Currently supports Growl, Libnotify, OSD, KDE (Knotify and Kdialog) and Snarl}
  s.test_files = ["test/notifier_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
