require 'spec_helper'

module Business
  describe CommandParameter do

    describe '#initalize' do
      before do
        @argv = ['bubble', 'yml', '4 3 2 1']
      end

      it 'should extract algorithm type from argv.' do
        CommandParameter.new(@argv).algorithm.should == :bubble
      end

      it 'should extract format type from argv.' do
        CommandParameter.new(@argv).format.should == :yml
      end

      it 'should get data from argv.' do
        CommandParameter.new(@argv).data.should == '4 3 2 1'
      end
    end
  end
end