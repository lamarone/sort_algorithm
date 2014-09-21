module Business
  class InteractiveService
    def initialize(importer)
      @importer = importer
    end

    def run
      @importer.each do |command_line|
        begin
          break if command_line == 'quit'
          argument = Command::CommandHandler.new.handle(command_line)
        rescue => e
          print "the command \"#{command_line}\" is not supported\n"
        end
      end
    end
  end
end