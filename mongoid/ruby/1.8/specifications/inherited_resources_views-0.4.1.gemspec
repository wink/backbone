# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{inherited_resources_views}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Fred Wu"]
  s.date = %q{2010-11-03}
  s.description = %q{Using Inherited Resources is an excellent way to reduce the amount of repetition in your controllers. But what about views? A lot of times resources share the same views, so why not DRY 'em up using Inherited Resources Views!}
  s.email = %q{ifredwu@gmail.com}
  s.extra_rdoc_files = ["README.md"]
  s.files = [".gitignore", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.md", "Rakefile", "VERSION", "inherited_resources_views.gemspec", "init.rb", "lib/generators/inherited_resources_views/generators/current_generator.rb", "lib/generators/inherited_resources_views/generators/legacy_generator.rb", "lib/generators/inherited_resources_views/inherited_resources_views_generator.rb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_collection_table.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_edit_navigation.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_form.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_index_navigation.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_new_navigation.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_resource_detail.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/_show_navigation.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/edit.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/index.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/new.html.erb", "lib/generators/inherited_resources_views/templates/app/views/inherited_resources/show.html.erb", "lib/inherited_resources_views.rb", "lib/inherited_resources_views/action_view.rb", "test/inherited_resources_views_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/fredwu/inherited_resources_views}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A lot of times resources share the same views, so why not DRY 'em up using Inherited Resources Views!}
  s.test_files = ["test/inherited_resources_views_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<inherited_resources>, [">= 1.0"])
      s.add_development_dependency(%q<hpricot>, [">= 0"])
      s.add_development_dependency(%q<ruby_parser>, [">= 0"])
    else
      s.add_dependency(%q<inherited_resources>, [">= 1.0"])
      s.add_dependency(%q<hpricot>, [">= 0"])
      s.add_dependency(%q<ruby_parser>, [">= 0"])
    end
  else
    s.add_dependency(%q<inherited_resources>, [">= 1.0"])
    s.add_dependency(%q<hpricot>, [">= 0"])
    s.add_dependency(%q<ruby_parser>, [">= 0"])
  end
end