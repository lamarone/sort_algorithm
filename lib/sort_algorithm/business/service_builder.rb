module Business
  class ServiceBuilder
    def self.build_with_command_format(algorithm)
      Service.new(Format::ImporterWithCommand.new, algorithm)
    end

    def self.build_with_yml_format(algorithm)
      Service.new(Format::ImporterWithYml.new, algorithm)
    end
  end
end