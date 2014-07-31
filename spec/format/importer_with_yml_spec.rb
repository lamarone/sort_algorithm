require 'spec_helper'

describe Format::ImporterWithYml do
  before :each do
    @importer = Format::ImporterWithYml.new
  end

  describe '#export_data' do
    context 'should not return null anyway' do
      it "when string_data = [1]" do
        string_data = [1]
        @importer.import_data(string_data).should_not == nil

      end
    end
  end

end
