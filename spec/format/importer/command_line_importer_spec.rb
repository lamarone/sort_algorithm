require 'spec_helper'

describe Format::CommandLineImporter do

  describe '#get' do
    context 'when item is 1' do
      it "string_data '1' after importing is [1]" do
        Format::CommandLineImporter.new('1').get.should == [1]
      end
    end

    context 'when item is 2' do
      it "string_data '1 2' after importing is [1, 2]" do
        Format::CommandLineImporter.new('1 2').get.should == [1, 2]
      end
    end

    context 'when item is 4' do
      it "string_data '1 2 3 4' after importing is [1, 2, 3, 4]" do
        Format::CommandLineImporter.new('1 2 3 4').get.should == [1, 2, 3, 4]
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
        Format::CommandLineImporter.new(string_data).get.should == import_data
      end
    end
  end
end