module Format
  class SearchExporter
    def export_data(position)
      if position != -1
        print "element position is : "
        p position
      else
        print "cannot find!\n"
      end
    end
  end
end