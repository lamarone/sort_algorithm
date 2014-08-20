require 'spec_helper'

describe Business::InteractiveBuilder do
  before :each do
    @interactive_builder = Business::InteractiveBuilder.new
  end

  describe '#build_with_command_format' do
    it "should build a instance of InteractiveService class" do
      @interactive_builder.should_not == nil
    end
  end

end