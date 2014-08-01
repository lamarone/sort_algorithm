require 'spec_helper'

describe Business::ServiceBuilder do
  before :each do
    @service_builder = Business::ServiceBuilder.new
  end

  describe '#build_with_command_format' do
      it "should build a instance of Service class" do
        @service_builder.should_not == nil
      end
    end

end