require 'spec_helper'

describe Format::SearchExporter do
  before :each do
    @searchexporter = Format::SearchExporter.new
  end

  describe '#export_data' do
    it "should return the value after invoke export_data method" do
      position = 1
      @searchexporter.export_data(position).should == position
    end
  end
end