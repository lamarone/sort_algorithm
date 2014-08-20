module Command
  class CommandHandler
    attr_accessor :command_type

    def initialize
      @commands = {
          'sort' => Command::SortCommand.new,
          'search' => Command::SearchCommand.new
      }
    end

    def handle(command_line)
      argument = getsargument(command_line)
      @commands[@command_type].execute(argument)
    end

    private
    def getsargument(command_line)
      command_translate = Command::CommandTranslate.new
      argument = command_translate.translate(command_line)
      @command_type = command_translate.command_type
      argument
    end
  end
end