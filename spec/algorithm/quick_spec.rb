require 'spec_helper'

describe Algorithm::Quick do
  before :each do
    @quick = Algorithm::Quick.new
  end

  describe '#sort' do

    context 'when item number is 1' do
      it "row_data [1] after sorting should be itself" do
        row_data = [1]
        @quick.sort(row_data).should == [1]
      end
    end

    context 'when item number is 2' do
      it "row_data [2, 1] after sorting should be [1, 2]" do
        row_data = [2, 1]
        @quick.sort(row_data).should == [1, 2]
      end
    end

    context 'when item number is 4' do
      it "row_dara [4, 3, 2, 1] after sorting should be [1, 2, 3, 4]" do
        row_data = [4, 3, 2, 1]
        @quick.sort(row_data).should == [1, 2, 3, 4]
      end
    end

    context 'when item number is 100' do
      it "a[i] should always be smaller than a[i+1] after sorting" do
        row_data = []
        100.times{
          row_data.push(rand(1..100))
        }
        sorted_data = @quick.sort(row_data)
        i = 0
        while i < 99 do
          (sorted_data[i]<=sorted_data[i+1]).should == true
          i = i + 1
        end
      end
    end

  end


end