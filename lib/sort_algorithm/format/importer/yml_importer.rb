require 'yaml'


module Format
  class YMLImporter
    def initialize(path='YML_importer.yml')
      @file_path = path
    end

    def get
      row_data = YAML.load(File.open(@file_path))
      print "import data with YML\n"
      row_data.split.collect do |m|
        m.to_i
      end
    end
  end
end
