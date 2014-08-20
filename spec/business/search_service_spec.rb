require 'spec_helper'

module Business
  describe SearchService do

    describe '#run' do
      context 'when item number is 1' do
        before do
          @searchservice = SearchServiceBuilder.build(CommandParameter.new(['binary', 'command', '1', '1']))
        end

        it "search 1 in array [1], the position should be 1" do
          @searchservice.run.should == 1
        end
      end

      context 'when item number is 2' do
        before do
          @searchservice = SearchServiceBuilder.build(CommandParameter.new(['binary', 'command', '1,2', '2']))
        end

        it "search 2 in array [1, 2], the position should be 2]" do
          @searchservice.run.should == 2
        end
      end

      context 'when item number is 100' do
        before do
          row_data = ""
          i = 1
          100.times {
            row_data = row_data + i.to_s + ','
            i = i + 1
          }
          parameter = CommandParameter.new(['binary', 'command', row_data, '50'])
          @searchservice = SearchServiceBuilder.build(parameter)
        end

        it "search 50 in array [1, 2, ..., 99, 100], the position should be 50" do
          @searchservice.run.should == 50
        end
      end


    end
  end
end