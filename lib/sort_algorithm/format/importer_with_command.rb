 module Format
  class ImporterWithCommand
    def import_data(string_data)
        print "import data with command\n"
         array = string_data.split.collect do |m|
        m = m.to_i
      end
    end
  end
end