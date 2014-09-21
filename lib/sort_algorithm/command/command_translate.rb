module Command
  class CommandTranslate
    attr_accessor :command_type

    def translate(command_line)
      array_argument = command_line.split()
      @command_type = array_argument[0]
      array_argument.shift
      argument = Command::CommandArgument.new(array_argument)
    end
  end
end