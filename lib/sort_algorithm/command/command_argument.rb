module Command
  class CommandArgument

    def initialize(array_argument)
      @algorithm, @import_method, @string_data, @target_data = array_argument[0], array_argument[1], (array_argument[2] || 'YML_importer.yml'), array_argument[3]
      @importer = {
          "command" => Format::CommandLineImporter.new(@string_data),
          "yml" => Format::YMLImporter.new(@string_data)
      }
    end

    def algorithm
      @algorithm.to_sym
    end

    def rowdata
      @importer[@import_method].get
    end

    def target
      @target_data.to_i
    end

  end
end