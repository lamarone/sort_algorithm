require 'spec_helper'

describe Format::YMLImporter do
  before do
    @importer = Format::YMLImporter.new
  end

  describe '#export_data' do
    context 'when the data in YML file is \"5 4 3 2 1\"  ' do

      it "should get row data from yml file." do
        @importer.get.should == [5, 4, 3, 2, 1]
      end
    end
  end
end
