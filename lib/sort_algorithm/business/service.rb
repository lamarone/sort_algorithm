module Business
  class Service
    attr_accessor :algo

    def initialize(importer, algo)
      @importer = importer
      @algo = algo
    end

    def run(string_data)
      row_data = @importer.import_data(string_data)
      sorted_data = @algo.sort(row_data)
      Format::Exporter.new.export_data(sorted_data)
    end

    private
    def sort(row_data)
      @algo.sort(row_data)
    end
  end
end