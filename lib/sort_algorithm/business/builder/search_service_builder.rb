module Business
  class SearchServiceBuilder
    ALGORITHMS = {
        binary: Algorithm::Binary.new,
    }.freeze
    IMPORTERS = {
        yml: Format::YMLImporter,
        command: Format::CommandLineImporter,
    }.freeze

    # @param [Business::CommandParameter] parameter
    def self.build(parameter)
      SearchService.new(ALGORITHMS[parameter.algorithm],
                        IMPORTERS[parameter.format].new(parameter.data1),
                        Format::SearchExporter.new,
                        parameter.data2)
    end
  end
end