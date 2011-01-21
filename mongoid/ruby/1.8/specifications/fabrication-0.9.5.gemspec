# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fabrication}
  s.version = "0.9.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Elliott"]
  s.date = %q{2011-01-16}
  s.description = %q{Fabrication is an object generation framework for ActiveRecord, Mongoid, and Sequel. It has a sensible syntax and lazily generates ActiveRecord associations!}
  s.email = ["paul@hashrocket.com"]
  s.files = ["lib/fabrication/attribute.rb", "lib/fabrication/errors/duplicate_fabricator_error.rb", "lib/fabrication/errors/unfabricatable_error.rb", "lib/fabrication/errors/unknown_fabricator_error.rb", "lib/fabrication/fabricator.rb", "lib/fabrication/generator/active_record.rb", "lib/fabrication/generator/base.rb", "lib/fabrication/generator/mongoid.rb", "lib/fabrication/generator/sequel.rb", "lib/fabrication/schematic.rb", "lib/fabrication/sequencer.rb", "lib/fabrication/support.rb", "lib/fabrication/version.rb", "lib/fabrication.rb", "lib/rails/generators/fabrication/cucumber_steps/cucumber_steps_generator.rb", "lib/rails/generators/fabrication/cucumber_steps/templates/fabrication_steps.rb", "lib/rails/generators/fabrication/model/model_generator.rb", "lib/rails/generators/fabrication/model/templates/fabricator.rb", "spec/fabrication/attribute_spec.rb", "spec/fabrication/fabricator_spec.rb", "spec/fabrication/generator/active_record_spec.rb", "spec/fabrication/generator/base_spec.rb", "spec/fabrication/generator/mongoid_spec.rb", "spec/fabrication/generator/sequel_spec.rb", "spec/fabrication/schematic_spec.rb", "spec/fabrication/sequence_spec.rb", "spec/fabrication/support_spec.rb", "spec/fabrication_spec.rb", "spec/fabricator_spec.rb", "spec/fabricators/cool_object_fabricator.rb", "spec/fabricators.rb", "spec/spec_helper.rb", "spec/support/active_record.rb", "spec/support/helper_objects.rb", "spec/support/mongoid.rb", "spec/support/sequel.rb", "README.markdown"]
  s.homepage = %q{http://github.com/paulelliott/fabrication}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Fabrication provides a robust solution for test object generation.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.2.0"])
      s.add_development_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_development_dependency(%q<ffaker>, [">= 0.4.0"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.3"])
      s.add_development_dependency(%q<sqlite3-ruby>, ["= 1.3.1"])
      s.add_development_dependency(%q<bson_ext>, [">= 1.1.5"])
      s.add_development_dependency(%q<mongoid>, ["= 2.0.0.rc.4"])
      s.add_development_dependency(%q<sequel>, ["= 3.16.0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.2.0"])
      s.add_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_dependency(%q<ffaker>, [">= 0.4.0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.3"])
      s.add_dependency(%q<sqlite3-ruby>, ["= 1.3.1"])
      s.add_dependency(%q<bson_ext>, [">= 1.1.5"])
      s.add_dependency(%q<mongoid>, ["= 2.0.0.rc.4"])
      s.add_dependency(%q<sequel>, ["= 3.16.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.2.0"])
    s.add_dependency(%q<cucumber>, [">= 0.10.0"])
    s.add_dependency(%q<ffaker>, [">= 0.4.0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.3"])
    s.add_dependency(%q<sqlite3-ruby>, ["= 1.3.1"])
    s.add_dependency(%q<bson_ext>, [">= 1.1.5"])
    s.add_dependency(%q<mongoid>, ["= 2.0.0.rc.4"])
    s.add_dependency(%q<sequel>, ["= 3.16.0"])
  end
end
