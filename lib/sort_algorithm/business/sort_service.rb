module Business
  class SortService

    def initialize(algorithm, row_data, exporter)
      @algorithm, @row_data, @exporter = algorithm, row_data, exporter
    end

    def run
      sorted_data = @algorithm.sort(@row_data)
      @exporter.export_data(sorted_data)
    end
  end
end