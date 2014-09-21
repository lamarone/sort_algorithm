module Command
  class SearchCommand
    def execute(argument)
      Business::SearchServiceBuilder.build(argument).run
    end
  end
end