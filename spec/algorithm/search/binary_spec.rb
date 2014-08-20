require 'spec_helper'

describe Algorithm::Binary do
  before :each do
    @binary = Algorithm::Binary.new
  end

  describe '#search' do

    context 'when item number is 1' do
      it "search 1 in array [1], the position should be 1" do
        row_data = [1]
        @binary.search(row_data,1).should == 1
      end
    end

    context 'when item number is 2' do
      it "search 2 in array [1, 2], the position should be 2" do
        row_data = [1, 2]
        @binary.search(row_data,2).should == 2
      end
    end

    context 'when item number is 100' do
      it "search 50 in array [1, 2, ..., 99, 100], the position should be 50" do
        row_data = []
        for i in 1..100 do
          row_data.push(i)
        end
        @binary.search(row_data,50).should == 50
      end
    end

    context 'when target number does not exist' do
      it "search 5 in array [1, 2, 3, 7, 8], the position should equal to -1" do
        row_data = [1, 2, 3, 7, 8]
        @binary.search(row_data,5).should == -1
      end
    end


  end
end