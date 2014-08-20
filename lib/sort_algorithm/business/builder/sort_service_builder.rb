module Business
  class SortServiceBuilder
    ALGORITHMS = {
        bubble: Algorithm::Bubble.new,
        quick: Algorithm::Quick.new
    }.freeze
    IMPORTERS = {
        yml: Format::YMLImporter,
        command: Format::CommandLineImporter,
    }.freeze

    # @param [Business::CommandParameter] parameter
    def self.build(parameter)
      SortService.new(ALGORITHMS[parameter.algorithm],
                  IMPORTERS[parameter.format].new(parameter.data1),
                  Format::SortExporter.new)
    end
  end
end