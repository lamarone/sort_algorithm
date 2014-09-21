module Business
  class SortServiceBuilder
    ALGORITHMS = {
        bubble: Algorithm::Bubble.new,
        quick: Algorithm::Quick.new
    }.freeze

    def self.build(argument)
      SortService.new(ALGORITHMS[argument.algorithm],
                  argument.rowdata,
                  Format::SortExporter.new)
    end
  end
end