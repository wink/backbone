# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoid}
  s.version = "2.0.0.rc.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Durran Jordan"]
  s.date = %q{2011-01-18}
  s.description = %q{Mongoid is an ODM (Object Document Mapper) Framework for MongoDB, written in Ruby.}
  s.email = ["durran@gmail.com"]
  s.files = ["lib/config/locales/bg.yml", "lib/config/locales/de.yml", "lib/config/locales/en.yml", "lib/config/locales/es.yml", "lib/config/locales/fr.yml", "lib/config/locales/hu.yml", "lib/config/locales/it.yml", "lib/config/locales/kr.yml", "lib/config/locales/nl.yml", "lib/config/locales/pl.yml", "lib/config/locales/pt-br.yml", "lib/config/locales/pt.yml", "lib/config/locales/ro.yml", "lib/config/locales/sv.yml", "lib/config/locales/zh-CN.yml", "lib/mongoid/atomicity.rb", "lib/mongoid/attributes.rb", "lib/mongoid/callbacks.rb", "lib/mongoid/collection.rb", "lib/mongoid/collections/cyclic_iterator.rb", "lib/mongoid/collections/master.rb", "lib/mongoid/collections/operations.rb", "lib/mongoid/collections/slaves.rb", "lib/mongoid/collections.rb", "lib/mongoid/components.rb", "lib/mongoid/config/database.rb", "lib/mongoid/config/replset_database.rb", "lib/mongoid/config.rb", "lib/mongoid/contexts/enumerable/sort.rb", "lib/mongoid/contexts/enumerable.rb", "lib/mongoid/contexts/ids.rb", "lib/mongoid/contexts/mongo.rb", "lib/mongoid/contexts/paging.rb", "lib/mongoid/contexts.rb", "lib/mongoid/copyable.rb", "lib/mongoid/criteria.rb", "lib/mongoid/criterion/complex.rb", "lib/mongoid/criterion/creational.rb", "lib/mongoid/criterion/exclusion.rb", "lib/mongoid/criterion/inclusion.rb", "lib/mongoid/criterion/inspection.rb", "lib/mongoid/criterion/optional.rb", "lib/mongoid/criterion/selector.rb", "lib/mongoid/cursor.rb", "lib/mongoid/default_scope.rb", "lib/mongoid/dirty.rb", "lib/mongoid/document.rb", "lib/mongoid/errors/document_not_found.rb", "lib/mongoid/errors/invalid_collection.rb", "lib/mongoid/errors/invalid_database.rb", "lib/mongoid/errors/invalid_field.rb", "lib/mongoid/errors/invalid_options.rb", "lib/mongoid/errors/invalid_type.rb", "lib/mongoid/errors/mongoid_error.rb", "lib/mongoid/errors/too_many_nested_attribute_records.rb", "lib/mongoid/errors/unsaved_document.rb", "lib/mongoid/errors/unsupported_version.rb", "lib/mongoid/errors/validations.rb", "lib/mongoid/errors.rb", "lib/mongoid/extensions/array/conversions.rb", "lib/mongoid/extensions/array/parentization.rb", "lib/mongoid/extensions/big_decimal/conversions.rb", "lib/mongoid/extensions/binary/conversions.rb", "lib/mongoid/extensions/boolean/conversions.rb", "lib/mongoid/extensions/date/conversions.rb", "lib/mongoid/extensions/datetime/conversions.rb", "lib/mongoid/extensions/false_class/equality.rb", "lib/mongoid/extensions/float/conversions.rb", "lib/mongoid/extensions/hash/conversions.rb", "lib/mongoid/extensions/hash/criteria_helpers.rb", "lib/mongoid/extensions/hash/scoping.rb", "lib/mongoid/extensions/integer/conversions.rb", "lib/mongoid/extensions/nil/collectionization.rb", "lib/mongoid/extensions/object/conversions.rb", "lib/mongoid/extensions/object/reflections.rb", "lib/mongoid/extensions/object/yoda.rb", "lib/mongoid/extensions/object_id/conversions.rb", "lib/mongoid/extensions/proc/scoping.rb", "lib/mongoid/extensions/set/conversions.rb", "lib/mongoid/extensions/string/conversions.rb", "lib/mongoid/extensions/string/inflections.rb", "lib/mongoid/extensions/symbol/conversions.rb", "lib/mongoid/extensions/symbol/inflections.rb", "lib/mongoid/extensions/time_conversions.rb", "lib/mongoid/extensions/true_class/equality.rb", "lib/mongoid/extensions.rb", "lib/mongoid/extras.rb", "lib/mongoid/factory.rb", "lib/mongoid/field.rb", "lib/mongoid/fields.rb", "lib/mongoid/finders.rb", "lib/mongoid/hierarchy.rb", "lib/mongoid/identity.rb", "lib/mongoid/indexes.rb", "lib/mongoid/inspection.rb", "lib/mongoid/javascript/functions.yml", "lib/mongoid/javascript.rb", "lib/mongoid/json.rb", "lib/mongoid/keys.rb", "lib/mongoid/logger.rb", "lib/mongoid/matchers/all.rb", "lib/mongoid/matchers/default.rb", "lib/mongoid/matchers/exists.rb", "lib/mongoid/matchers/gt.rb", "lib/mongoid/matchers/gte.rb", "lib/mongoid/matchers/in.rb", "lib/mongoid/matchers/lt.rb", "lib/mongoid/matchers/lte.rb", "lib/mongoid/matchers/ne.rb", "lib/mongoid/matchers/nin.rb", "lib/mongoid/matchers/size.rb", "lib/mongoid/matchers.rb", "lib/mongoid/modifiers/command.rb", "lib/mongoid/modifiers/inc.rb", "lib/mongoid/modifiers.rb", "lib/mongoid/multi_database.rb", "lib/mongoid/multi_parameter_attributes.rb", "lib/mongoid/named_scope.rb", "lib/mongoid/nested_attributes.rb", "lib/mongoid/paranoia.rb", "lib/mongoid/paths.rb", "lib/mongoid/persistence/command.rb", "lib/mongoid/persistence/insert.rb", "lib/mongoid/persistence/insert_embedded.rb", "lib/mongoid/persistence/remove.rb", "lib/mongoid/persistence/remove_all.rb", "lib/mongoid/persistence/remove_embedded.rb", "lib/mongoid/persistence/update.rb", "lib/mongoid/persistence.rb", "lib/mongoid/railtie.rb", "lib/mongoid/railties/database.rake", "lib/mongoid/railties/document.rb", "lib/mongoid/relations/accessors.rb", "lib/mongoid/relations/auto_save.rb", "lib/mongoid/relations/binding.rb", "lib/mongoid/relations/bindings/embedded/in.rb", "lib/mongoid/relations/bindings/embedded/many.rb", "lib/mongoid/relations/bindings/embedded/one.rb", "lib/mongoid/relations/bindings/referenced/in.rb", "lib/mongoid/relations/bindings/referenced/many.rb", "lib/mongoid/relations/bindings/referenced/many_to_many.rb", "lib/mongoid/relations/bindings/referenced/one.rb", "lib/mongoid/relations/bindings.rb", "lib/mongoid/relations/builder.rb", "lib/mongoid/relations/builders/embedded/in.rb", "lib/mongoid/relations/builders/embedded/many.rb", "lib/mongoid/relations/builders/embedded/one.rb", "lib/mongoid/relations/builders/nested_attributes/many.rb", "lib/mongoid/relations/builders/nested_attributes/one.rb", "lib/mongoid/relations/builders/referenced/in.rb", "lib/mongoid/relations/builders/referenced/many.rb", "lib/mongoid/relations/builders/referenced/many_to_many.rb", "lib/mongoid/relations/builders/referenced/one.rb", "lib/mongoid/relations/builders.rb", "lib/mongoid/relations/cascading/delete.rb", "lib/mongoid/relations/cascading/destroy.rb", "lib/mongoid/relations/cascading/nullify.rb", "lib/mongoid/relations/cascading/strategy.rb", "lib/mongoid/relations/cascading.rb", "lib/mongoid/relations/cyclic.rb", "lib/mongoid/relations/embedded/in.rb", "lib/mongoid/relations/embedded/many.rb", "lib/mongoid/relations/embedded/one.rb", "lib/mongoid/relations/macros.rb", "lib/mongoid/relations/many.rb", "lib/mongoid/relations/metadata.rb", "lib/mongoid/relations/nested_builder.rb", "lib/mongoid/relations/one.rb", "lib/mongoid/relations/polymorphic.rb", "lib/mongoid/relations/proxy.rb", "lib/mongoid/relations/referenced/in.rb", "lib/mongoid/relations/referenced/many.rb", "lib/mongoid/relations/referenced/many_to_many.rb", "lib/mongoid/relations/referenced/one.rb", "lib/mongoid/relations/reflections.rb", "lib/mongoid/relations.rb", "lib/mongoid/safe.rb", "lib/mongoid/safety.rb", "lib/mongoid/scope.rb", "lib/mongoid/serialization.rb", "lib/mongoid/state.rb", "lib/mongoid/timestamps.rb", "lib/mongoid/validations/associated.rb", "lib/mongoid/validations/uniqueness.rb", "lib/mongoid/validations.rb", "lib/mongoid/version.rb", "lib/mongoid/versioning.rb", "lib/mongoid.rb", "lib/rails/generators/mongoid/config/config_generator.rb", "lib/rails/generators/mongoid/config/templates/mongoid.yml", "lib/rails/generators/mongoid/model/model_generator.rb", "lib/rails/generators/mongoid/model/templates/model.rb", "lib/rails/generators/mongoid_generator.rb", "lib/rails/mongoid.rb", "LICENSE", "README.rdoc", "Rakefile"]
  s.homepage = %q{http://mongoid.org}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mongoid}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Elegant Persistance in Ruby for MongoDB.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_runtime_dependency(%q<tzinfo>, ["~> 0.3.22"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.pre"])
      s.add_runtime_dependency(%q<mongo>, ["~> 1.2"])
      s.add_development_dependency(%q<bson_ext>, ["~> 1.2"])
      s.add_development_dependency(%q<mocha>, ["= 0.9.8"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<watchr>, ["= 0.6"])
    else
      s.add_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_dependency(%q<tzinfo>, ["~> 0.3.22"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.pre"])
      s.add_dependency(%q<mongo>, ["~> 1.2"])
      s.add_dependency(%q<bson_ext>, ["~> 1.2"])
      s.add_dependency(%q<mocha>, ["= 0.9.8"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<watchr>, ["= 0.6"])
    end
  else
    s.add_dependency(%q<activemodel>, ["~> 3.0"])
    s.add_dependency(%q<tzinfo>, ["~> 0.3.22"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.pre"])
    s.add_dependency(%q<mongo>, ["~> 1.2"])
    s.add_dependency(%q<bson_ext>, ["~> 1.2"])
    s.add_dependency(%q<mocha>, ["= 0.9.8"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<watchr>, ["= 0.6"])
  end
end
