module Business
  class Service

    def initialize(algorithm, importer, exporter)
      @algorithm, @importer, @exporter = algorithm, importer, exporter
    end

    def run
      row_data = @importer.get
      sorted_data = @algorithm.sort(row_data)
      @exporter.export_data(sorted_data)
    end
  end
end