module Business
  class ServiceBuilder
    ALGORITHMS = {
        bubble: Algorithm::Bubble.new,
        quick: Algorithm::Quick.new
    }.freeze
    IMPORTERS = {
        yml: Format::YMLImporter,
        command: Format::CommandLineImporter
    }.freeze

    # @param [Business::CommandParameter] parameter
    def self.build(parameter)
      Service.new(ALGORITHMS[parameter.algorithm],
                  IMPORTERS[parameter.format].new(parameter.data),
                  Format::Exporter.new)
    end
  end
end