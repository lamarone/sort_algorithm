module Business
  class InteractiveBuilder
    def self.build
      InteractiveService.new(Format::InteractiveImporter.new)
    end
  end
end