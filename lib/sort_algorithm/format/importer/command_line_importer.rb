module Format
  class CommandLineImporter

    def initialize(row_data)
      @row_data = row_data
    end

    def get
      print "import data with command\n"
      @row_data.split.collect do |m|
        m.to_i
      end
    end
  end
end