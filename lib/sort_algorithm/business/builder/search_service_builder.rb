module Business
  class SearchServiceBuilder
    ALGORITHMS = {
        binary: Algorithm::Binary.new,
    }.freeze


    # @param [Business::CommandParameter] parameter
    def self.build(argument)
      SearchService.new(ALGORITHMS[argument.algorithm],
                        argument.rowdata,
                        Format::SearchExporter.new,
                       argument.target)
    end
  end
end