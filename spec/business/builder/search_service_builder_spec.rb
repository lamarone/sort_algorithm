require 'spec_helper'

describe Business::SearchServiceBuilder do
  before :each do
    @search_service_builder = Business::SearchServiceBuilder.new
  end

  describe '#build_with_command_format' do
    it "should build a instance of SearchService class" do
      @search_service_builder.should_not == nil
    end
  end

end