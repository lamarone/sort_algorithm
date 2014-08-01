require 'spec_helper'

describe Format::Exporter do
  before :each do
    @exporter = Format::Exporter.new
  end

  describe '#export_data' do
    it "should return the same array after invoke export_data method" do
      array_in_int = [1, 2, 3, 4]
      @exporter.export_data(array_in_int).should == array_in_int
    end
  end
end