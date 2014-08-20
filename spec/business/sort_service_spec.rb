require 'spec_helper'

module Business
  describe SortService do

    describe '#run' do
      context 'when item number is 1' do
        before do
          @sortservice = SortServiceBuilder.build(CommandParameter.new(['bubble', 'command', '1']))
        end

        it "string_data '1' after sorting is [1]" do
          @sortservice.run.should == [1]
        end
      end

      context 'when item number is 2' do
        before do
          @sortservice = SortServiceBuilder.build(CommandParameter.new(['bubble', 'command', '2,1']))
        end

        it "string_data '2,1' after sorting is [1, 2]" do
          @sortservice.run.should == [1, 2]
        end
      end

      context 'when item number is 4' do
        before do
          @sortservice = SortServiceBuilder.build(CommandParameter.new(['bubble', 'command', '4,3,2,1']))
        end

        it "string_data '4,3,2,1' after sorting is [1, 2, 3, 4]" do
          @sortservice.run.should == [1, 2, 3, 4]
        end
      end

      context 'when item number is 100' do
        before do
          row_data = ""
          100.times {
            row_data = row_data + rand(1..100).to_s + ','
          }
          parameter = CommandParameter.new(['bubble', 'command', row_data])
          @sortservice = SortServiceBuilder.build(parameter)
        end

        it "a[i] should always be smaller than a[i+1] after sorting" do
          sorted_data = @sortservice.run
          i = 0
          while i < 99 do
            (sorted_data[i]<=sorted_data[i+1]).should == true
            i = i + 1
          end
        end
      end
    end
  end
end