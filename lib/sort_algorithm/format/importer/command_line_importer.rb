module Format
  class CommandLineImporter

    def initialize(string_data)
      @string_data = string_data
    end

    def get
      print "import data with command\n"
      @row_data = convert_to_i(@string_data)
      print "row data : ",@row_data,"\n"
      @row_data
    end

    private
    def convert_to_i(row_data)
      row_data.split(',').collect do |m|
        m.to_i
      end
    end
  end
end