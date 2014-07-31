require 'yaml'

module Format
  class ImporterWithYml
    def import_data(string_data)
      string_data  = YAML.load(File.open("./YML_importer.yml"))
      array = string_data.split.collect do |m|
        m = m.to_i
      end
    end
  end
end
