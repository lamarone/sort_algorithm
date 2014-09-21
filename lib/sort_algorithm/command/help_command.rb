module Command
  class HelpCommand
    def execute(argument)
      print "commands supported are list as following:\n"
      print "sort :    sort <algorithm> <import format> <row data> \n"
      print "search :  search <algorithm> <import format> <row data> <search target>\n"
    end
  end
end