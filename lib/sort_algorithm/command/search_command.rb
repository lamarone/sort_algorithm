module Command
  class SearchCommand
    def execute(argument)
      parameter = Business::CommandParameter.new(argument)
      Business::SearchServiceBuilder.build(parameter).run
    end
  end
end