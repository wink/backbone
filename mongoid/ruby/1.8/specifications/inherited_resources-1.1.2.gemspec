# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{inherited_resources}
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jos\303\251 Valim"]
  s.date = %q{2010-04-02}
  s.description = %q{Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important.}
  s.email = %q{jose.valim@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["CHANGELOG", "MIT-LICENSE", "README.rdoc", "Rakefile", "lib/generators/rails/USAGE", "lib/generators/rails/inherited_resources_controller_generator.rb", "lib/generators/rails/templates/controller.rb", "lib/inherited_resources.rb", "lib/inherited_resources/actions.rb", "lib/inherited_resources/base.rb", "lib/inherited_resources/base_helpers.rb", "lib/inherited_resources/belongs_to_helpers.rb", "lib/inherited_resources/blank_slate.rb", "lib/inherited_resources/class_methods.rb", "lib/inherited_resources/dsl.rb", "lib/inherited_resources/polymorphic_helpers.rb", "lib/inherited_resources/responder.rb", "lib/inherited_resources/singleton_helpers.rb", "lib/inherited_resources/url_helpers.rb", "lib/inherited_resources/version.rb", "test/aliases_test.rb", "test/association_chain_test.rb", "test/base_test.rb", "test/belongs_to_test.rb", "test/class_methods_test.rb", "test/customized_base_test.rb", "test/customized_belongs_to_test.rb", "test/defaults_test.rb", "test/nested_belongs_to_test.rb", "test/optional_belongs_to_test.rb", "test/polymorphic_test.rb", "test/redirect_to_test.rb", "test/singleton_test.rb", "test/test_helper.rb", "test/url_helpers_test.rb"]
  s.homepage = %q{http://github.com/josevalim/inherited_resources}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{inherited_resources}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important.}
  s.test_files = ["test/aliases_test.rb", "test/association_chain_test.rb", "test/base_test.rb", "test/belongs_to_test.rb", "test/class_methods_test.rb", "test/customized_base_test.rb", "test/customized_belongs_to_test.rb", "test/defaults_test.rb", "test/nested_belongs_to_test.rb", "test/optional_belongs_to_test.rb", "test/polymorphic_test.rb", "test/redirect_to_test.rb", "test/singleton_test.rb", "test/test_helper.rb", "test/url_helpers_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<responders>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<has_scope>, ["~> 0.5.0"])
    else
      s.add_dependency(%q<responders>, ["~> 0.6.0"])
      s.add_dependency(%q<has_scope>, ["~> 0.5.0"])
    end
  else
    s.add_dependency(%q<responders>, ["~> 0.6.0"])
    s.add_dependency(%q<has_scope>, ["~> 0.5.0"])
  end
end
