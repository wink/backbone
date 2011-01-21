require File.dirname(__FILE__) + "/acceptance_helper.rb"

feature "Acceptance spec execution", %q{
  In order to write better software
  As a ruby developer
  I want to execute acceptance specs
} do

  scenario "Minimal acceptance spec" do
    spec_file = create_spec <<-SPEC
      require '#{File.dirname(__FILE__) + "/../../../lib/steak"}'
      feature "Minimal spec" do
        scenario "First scenario" do
          true.should be_true
        end
      end
    SPEC
    output = run_spec spec_file
    output.should =~ /1 example, 0 failures/
  end

  scenario "Minimal acceptance spec that fails" do
    spec_file = create_spec <<-SPEC
      require '#{File.dirname(__FILE__) + "/../../../lib/steak"}'
      feature "Minimal spec" do
        scenario "First scenario" do
          true.should be_false
        end
      end
    SPEC
    output = run_spec spec_file
    output.should =~ /1 example, 1 failure/
  end

  scenario "Acceptance spec with background" do
    spec_file = create_spec <<-SPEC
      require '#{File.dirname(__FILE__) + "/../../../lib/steak"}'
      feature "Minimal spec" do
        background do
          @value = 17
        end
        scenario "First scenario" do
          @value.should == 17
        end
      end
    SPEC
    output = run_spec spec_file
    output.should =~ /1 example, 0 failures/
  end
  
  scenario "Steak should not pollute Object methods namespace" do
    spec_file = create_spec <<-SPEC
      require '#{File.dirname(__FILE__) + "/../../../lib/steak"}'
      
      class Wadus
        def call_feature
          feature
        end
        
        def method_missing(meth, *args, &blk)
          return "Hello!"
        end
      end
      
      feature "Wadus class" do
        scenario "should not be polluted by Steak" do
          w = Wadus.new
          w.should_not respond_to(:feature)
          w.call_feature.should == "Hello!"
        end
      end
    SPEC
    output = run_spec spec_file
    output.should =~ /1 example, 0 failures/
  end
end
