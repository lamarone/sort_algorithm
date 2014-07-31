require 'spec_helper'

describe Format::ImporterWithCommand do
  before :each do
    @importer = Format::ImporterWithCommand.new
  end

  describe '#import_data' do
    context 'when item is 1' do
      it "string_data '1' after importing is [1]" do
        string_data = "1"
        @importer.import_data(string_data).should == [1]
      end
    end

    context 'when item is 2' do
      it "string_data '1 2' after importing is [1, 2]" do
        string_data = "1 2"
        @importer.import_data(string_data).should == [1, 2]
      end
    end

    context 'when item is 4' do
      it "string_data '1 2 3 4' after importing is [1, 2, 3, 4]" do
        string_data = "1 2 3 4"
        @importer.import_data(string_data).should == [1, 2, 3, 4]
      end
    end

    context 'when item is 100' do
      it "string_data after importing should be relevant to the string_data itself but in array farmat " do
        string_data = ""
        import_data = []
        100.times{
          temp = rand(1..100)
          string_data = string_data + temp.to_s + ' '
          import_data.push(temp)
        }
        @importer.import_data(string_data).should == import_data
      end
    end

  end

end