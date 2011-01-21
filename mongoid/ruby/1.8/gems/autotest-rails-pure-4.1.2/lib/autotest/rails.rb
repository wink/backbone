require 'autotest'

class Autotest::Rails < Autotest
  VERSION = File.read( File.join(File.dirname(__FILE__),'..','..','VERSION') ).strip

  def initialize # :nodoc:
    super

    add_exception %r%^\./(?:db|doc|log|public|script|tmp|vendor)%

    clear_mappings

    # lib/foo/bar.rb -> unit/foo/bar_test.rb
    add_mapping %r%^lib/(.*)\.rb$% do |_, m|
      "test/unit/#{m[1]}_test.rb"
    end

    add_mapping %r%^test/fixtures/(.*)s.yml% do |_, m|
      [
        "test/unit/#{m[1]}_test.rb",
        "test/views/#{m[1]}_view_test.rb",
        "test/controllers/#{m[1]}_controller_test.rb",
        "test/functional/#{m[1]}_controller_test.rb"
      ]
    end

    # test changes -> run test
    add_mapping %r%^test/(#{test_namespaces*'|'})/.*rb$% do |filename, _|
      filename
    end

    # model -> unit
    add_mapping %r%^app/models/(.*)\.rb$% do |_, m|
      "test/unit/#{m[1]}_test.rb"
    end

    # application_helper -> all views/helpers/controllers
    add_mapping %r%^app/helpers/application_helper.rb% do
      files_matching %r%^test/(views|functional|helpers)/.*_test\.rb$%
    end

    # helper -> helper + view + controllers
    add_mapping %r%^app/helpers/(.*)_helper.rb% do |_, m|
      [
        "test/views/#{m[1]}_view_test.rb",
        "test/helpers/#{m[1]}_helper_test.rb",
        "test/functional/#{m[1]}_controller_test.rb",
        "test/controllers/#{m[1]}_controller_test.rb",
      ]
    end

    # view -> view + controller
    add_mapping %r%^app/views/(.*)/% do |_, m|
      [
        "test/views/#{m[1]}_view_test.rb",
        "test/functional/#{m[1]}_controller_test.rb",
        "test/controllers/#{m[1]}_controller_test.rb"
      ]
    end

    # application_controller.rb -> all views/controllers
    add_mapping %r%^app/controllers/application_controller\.rb$% do |_, m|
      files_matching %r%^test/(controllers|views|functional)/.*_test\.rb$%
    end

    add_mapping %r%^app/controllers/(.*)\.rb$% do |_, m|
      [
        "test/controllers/#{m[1]}_test.rb",
        "test/functional/#{m[1]}_test.rb"
      ]
    end

    add_mapping %r%^app/views/layouts/% do
      "test/views/layouts_view_test.rb"
    end

    # routes -> views + controllers + integration
    add_mapping %r%^config/routes.rb$% do
      files_matching %r%^test/(controllers|views|functional|integration)/.*_test\.rb$%
    end

    # config -> everything
    add_mapping %r%^test/test_helper.rb|config/((boot|environment(s/test)?).rb|database.yml)% do
      files_matching %r%^test/(#{test_namespaces*'|'})/.*_test\.rb$%
    end
  end

  def test_namespaces
    %w[unit functional integration views controllers helpers cells]
  end

  # Convert the pathname s to the name of class.
  def path_to_classname(s)
    sep = File::SEPARATOR
    parts = s.sub(/^test#{sep}((#{test_namespaces*'|'})#{sep})?/, '').sub(/\.rb$/, '').split(sep)
    modules = parts.map { |path| path.split(/_/).map { |seg| seg.capitalize }.join }
    modules[-1] = "#{modules.last}Test" unless modules.last =~ /Test$/
    modules.join('::')
  end
end