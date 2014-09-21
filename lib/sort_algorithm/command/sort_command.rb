module Command
  class SortCommand
    def execute(argument)
      Business::SortServiceBuilder.build(argument).run
    end
  end
end