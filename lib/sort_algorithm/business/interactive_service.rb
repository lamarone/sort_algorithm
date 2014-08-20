module Business
  class InteractiveService
    def initialize(importer)
      @importer = importer
    end

    def run
      @importer.each do |command_line|
        begin
          argument = Command::CommandHandler.new.handle(command_line)
        rescue => e
          puts e.message
        end
      end
    end
  end
end