module Business
  class SearchService

    def initialize(algorithm, row_data, exporter, target)
      @algorithm, @row_data, @exporter, @target = algorithm, row_data, exporter, target
    end

    def run
      position = @algorithm.search(@row_data, @target)
      @exporter.export_data(position)

    end
  end
end