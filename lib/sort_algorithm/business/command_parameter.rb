module Business
  class CommandParameter
    attr_reader :algorithm,
                :format,
                :data

    def initialize(argv)
      @algorithm, @format, @data = argv[0].to_sym, argv[1].to_sym, (argv[2] || 'YML_importer.yml')
    end
  end
end