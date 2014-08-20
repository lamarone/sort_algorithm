module Business
  class SearchService

    def initialize(algorithm, importer, exporter, target)
      @algorithm, @importer, @exporter, @target = algorithm, importer, exporter, target
    end

    def run
      row_data = @importer.get
      position = @algorithm.search(row_data, @target)
      @exporter.export_data(position)
    end
  end
end