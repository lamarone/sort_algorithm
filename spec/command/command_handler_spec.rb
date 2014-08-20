require 'spec_helper'

describe Command::CommandHandler do
  before :each do
    @commandhandler = Command::CommandHandler.new
  end

  describe '#command handler' do
    context 'sort command' do
      it "sort bubble yml : [1, 2, 3, 4, 5]" do
        @command_line = "sort bubble yml"
        @commandhandler.handle(@command_line).should == [1, 2, 3, 4, 5]
      end

      it "sort bubble command 4,3,2,1 : [1, 2, 3, 4]" do
        @command_line = "sort bubble command 4,3,2,1"
        @commandhandler.handle(@command_line).should == [1, 2, 3, 4]
      end

      it "sort quick yml : [1, 2, 3, 4, 5]" do
        @command_line = "sort quick yml"
        @commandhandler.handle(@command_line).should == [1, 2, 3, 4, 5]
      end

      it "sort quick command 4,3,2,1 : [1, 2, 3, 4]" do
        @command_line = "sort quick command 4,3,2,1"
        @commandhandler.handle(@command_line).should == [1, 2, 3, 4]
      end
    end

    context 'search command' do
      it "search binary command 1,2,3,7,8 8 : 5" do
        @command_line = "search binary command 1,2,3,7,8 8"
        @commandhandler.handle(@command_line).should == 5
      end

      it "search binary command 1,2,3,7,8 5 : -1" do
        @command_line = "search binary command 1,2,3,7,8 5"
        @commandhandler.handle(@command_line).should == -1
      end

    end

  end
end