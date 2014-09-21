module Format
  class InteractiveImporter
    def each
      while true do
        print 'cmd >> '
        yield gets.chomp
      end
    end
  end
end
