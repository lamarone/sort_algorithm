require 'spec_helper'

describe Business::Service do
  before :each do
    @service = Business::ServiceBuilder.build_with_command_format(Algorithm::Bubble.new)
  end

  describe '#run' do

    context 'when item nunber is 1' do
      it "string_data '1' after sorting is [1]" do
        string_data = "1"
        @service.run(string_data).should == [1]
      end
    end

    context 'when item nunber is 2' do
      it "string_data '2 1' after sorting is [1, 2]" do
        string_data = "2 1"
        @service.run(string_data).should == [1, 2]
      end
    end

    context 'when item nunber is 4' do
      it "string_data '4 3 2 1' after sorting is [1, 2, 3, 4]" do
        string_data = "4 3 2 1"
        @service.run(string_data).should == [1, 2, 3, 4]
      end
    end

    context 'when item number is 100' do
      it "a[i] should always be smaller than a[i+1] after sorting" do
        string_data = ""
        100.times{
          string_data = string_data + rand(1..100).to_s + ' '
        }
        sorted_data = @service.run(string_data)
        i = 0
        while i < 99 do
          (sorted_data[i]<=sorted_data[i+1]).should == true
          i = i + 1
        end
      end
    end



  end
end