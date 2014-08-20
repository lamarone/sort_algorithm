module Command
  class CommandTranslate
    attr_accessor :command_type

    def translate(command_line)
      argument = command_line.split()
      @command_type = argument[0]
      argument.shift
      argument
    end
  end
end