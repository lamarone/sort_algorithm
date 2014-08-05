module Business
  class Service

    def initialize(importer, algorithm)
      @importer = importer
      @algorithm = algorithm
    end

    def run(string_data)
      row_data = @importer.import_data(string_data)
      sorted_data = @algorithm.sort(row_data)
      Format::Exporter.new.export_data(sorted_data)
    end
  end
end