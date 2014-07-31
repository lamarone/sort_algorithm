module Business
  class ServiceBuilder
    def self.build_with_command_format(algo)
      Service.new(Format::ImporterWithCommand.new,algo)
    end

    def self.build_with_yml_format(algo)
      Service.new(Format::ImporterWithYml.new,algo)
    end
  end
end