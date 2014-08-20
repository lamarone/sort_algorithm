module Command
  class SortCommand
    def execute(argument)
      parameter = Business::CommandParameter.new(argument)
      Business::SortServiceBuilder.build(parameter).run
    end
  end
end