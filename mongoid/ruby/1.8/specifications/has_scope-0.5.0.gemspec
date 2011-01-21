# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{has_scope}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jos\303\251 Valim"]
  s.date = %q{2010-03-22}
  s.description = %q{Maps controller filters to your resource scopes}
  s.email = %q{contact@plataformatec.com.br}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["MIT-LICENSE", "README.rdoc", "Rakefile", "init.rb", "lib/has_scope.rb", "test/has_scope_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/plataformatec/has_scope}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Maps controller filters to your resource scopes}
  s.test_files = ["test/has_scope_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
