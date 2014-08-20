require 'spec_helper'

describe Command::CommandTranslate do
  before :each do
    @command_translate = Command::CommandTranslate.new
  end

  describe '#translate command' do
    context "command : sort bubble command 4,3,2,1" do
      it "it should return [\"bubble\", \"command\", \"4,3,2,1\"]" do
        @command_line = "sort bubble command 4,3,2,1"
        @command_translate.translate(@command_line).should == ["bubble", "command", "4,3,2,1"]
      end
      it "command_type should be 'sort'" do
        @command_line = "sort bubble command 4,3,2,1"
        @command_translate.translate(@command_line)
        @command_translate.command_type.should == 'sort'
      end
    end
  end
end