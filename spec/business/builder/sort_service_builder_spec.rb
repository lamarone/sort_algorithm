require 'spec_helper'

describe Business::SortServiceBuilder do
  before :each do
    @sort_service_builder = Business::SortServiceBuilder.new
  end

  describe '#build_with_command_format' do
      it "should build a instance of SortService class" do
        @sort_service_builder.should_not == nil
      end
    end

end