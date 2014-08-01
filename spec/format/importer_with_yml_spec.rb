require 'spec_helper'

describe Format::ImporterWithYml do
  before :each do
    @importer = Format::ImporterWithYml.new
  end

  describe '#export_data' do
    context 'should return [5, 4, 3, 2, 1] anyway when the data in YML file is \"5 4 3 2 1\"  ' do
      it "when string_data = \"1\" " do
        string_data = '1'
        @importer.import_data(string_data).should == [5, 4, 3, 2, 1]
      end

      it "when string_data = \"2 1\" " do
        string_data = '2 1'
        @importer.import_data(string_data).should == [5, 4, 3, 2, 1]
      end

      it "when string_data = \"4 3 2 1\" " do
        string_data = '4 3 2 1'
        @importer.import_data(string_data).should == [5, 4, 3, 2, 1]
      end


    end
  end

end
