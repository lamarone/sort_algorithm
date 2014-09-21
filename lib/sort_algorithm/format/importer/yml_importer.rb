require 'yaml'


module Format
  class YMLImporter
    def initialize(path='YML_importer.yml')
      @file_path = path
    end

    def get
      string_data = YAML.load(File.open(@file_path))
      print "import data with YML\n"
      row_data = convert_to_i(string_data)
      print "row data : #{row_data}\n"
      row_data
    end

    private
    def convert_to_i(string_data)
      string_data.split.collect do |m|
        m.to_i
      end
    end
  end

end
