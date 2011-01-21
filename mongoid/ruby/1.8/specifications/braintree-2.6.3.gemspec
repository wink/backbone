# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{braintree}
  s.version = "2.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Braintree Payment Solutions"]
  s.date = %q{2011-01-09}
  s.description = %q{Ruby library for integrating with the Braintree Gateway}
  s.email = %q{devs@getbraintree.com}
  s.files = ["README.rdoc", "LICENSE", "lib/braintree/add_on.rb", "lib/braintree/address/country_names.rb", "lib/braintree/address.rb", "lib/braintree/address_gateway.rb", "lib/braintree/advanced_search.rb", "lib/braintree/base_module.rb", "lib/braintree/configuration.rb", "lib/braintree/credit_card.rb", "lib/braintree/credit_card_gateway.rb", "lib/braintree/credit_card_verification.rb", "lib/braintree/customer.rb", "lib/braintree/customer_gateway.rb", "lib/braintree/digest.rb", "lib/braintree/discount.rb", "lib/braintree/error_codes.rb", "lib/braintree/error_result.rb", "lib/braintree/errors.rb", "lib/braintree/exceptions.rb", "lib/braintree/gateway.rb", "lib/braintree/http.rb", "lib/braintree/modification.rb", "lib/braintree/resource_collection.rb", "lib/braintree/subscription.rb", "lib/braintree/subscription_gateway.rb", "lib/braintree/subscription_search.rb", "lib/braintree/successful_result.rb", "lib/braintree/test/credit_card_numbers.rb", "lib/braintree/test/transaction_amounts.rb", "lib/braintree/transaction/address_details.rb", "lib/braintree/transaction/credit_card_details.rb", "lib/braintree/transaction/customer_details.rb", "lib/braintree/transaction/status_details.rb", "lib/braintree/transaction.rb", "lib/braintree/transaction_gateway.rb", "lib/braintree/transaction_search.rb", "lib/braintree/transparent_redirect.rb", "lib/braintree/transparent_redirect_gateway.rb", "lib/braintree/util.rb", "lib/braintree/validation_error.rb", "lib/braintree/validation_error_collection.rb", "lib/braintree/version.rb", "lib/braintree/xml/generator.rb", "lib/braintree/xml/libxml.rb", "lib/braintree/xml/parser.rb", "lib/braintree/xml/rexml.rb", "lib/braintree/xml.rb", "lib/braintree.rb", "spec/hacks/tcp_socket.rb", "spec/integration/braintree/address_spec.rb", "spec/integration/braintree/advanced_search_spec.rb", "spec/integration/braintree/credit_card_spec.rb", "spec/integration/braintree/customer_spec.rb", "spec/integration/braintree/error_codes_spec.rb", "spec/integration/braintree/http_spec.rb", "spec/integration/braintree/subscription_spec.rb", "spec/integration/braintree/test/transaction_amounts_spec.rb", "spec/integration/braintree/transaction_search_spec.rb", "spec/integration/braintree/transaction_spec.rb", "spec/integration/braintree/transparent_redirect_spec.rb", "spec/integration/spec_helper.rb", "spec/script/httpsd.rb", "spec/spec_helper.rb", "spec/unit/braintree/address_spec.rb", "spec/unit/braintree/base_module_spec.rb", "spec/unit/braintree/configuration_spec.rb", "spec/unit/braintree/credit_card_spec.rb", "spec/unit/braintree/credit_card_verification_spec.rb", "spec/unit/braintree/customer_spec.rb", "spec/unit/braintree/digest_spec.rb", "spec/unit/braintree/error_result_spec.rb", "spec/unit/braintree/errors_spec.rb", "spec/unit/braintree/http_spec.rb", "spec/unit/braintree/resource_collection_spec.rb", "spec/unit/braintree/subscription_search_spec.rb", "spec/unit/braintree/subscription_spec.rb", "spec/unit/braintree/successful_result_spec.rb", "spec/unit/braintree/transaction/credit_card_details_spec.rb", "spec/unit/braintree/transaction/customer_details_spec.rb", "spec/unit/braintree/transaction_search_spec.rb", "spec/unit/braintree/transaction_spec.rb", "spec/unit/braintree/transparent_redirect_spec.rb", "spec/unit/braintree/util_spec.rb", "spec/unit/braintree/validation_error_collection_spec.rb", "spec/unit/braintree/validation_error_spec.rb", "spec/unit/braintree/xml/libxml_spec.rb", "spec/unit/braintree/xml/parser_spec.rb", "spec/unit/braintree/xml/rexml_spec.rb", "spec/unit/braintree/xml_spec.rb", "spec/unit/braintree_spec.rb", "spec/unit/spec_helper.rb", "lib/ssl/sandbox_braintreegateway_com.ca.crt", "lib/ssl/securetrust_ca.crt", "lib/ssl/www_braintreegateway_com.ca.crt"]
  s.homepage = %q{http://www.braintreepaymentsolutions.com/gateway}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{braintree}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Braintree Gateway Ruby Client Library}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
  end
end
