module Business
  class CommandParameter
    attr_reader :algorithm,
                :format,
                :data1,
                :data2

    def initialize(argv)
      @algorithm, @format, @data1, @data2 = argv[0].to_sym, argv[1].to_sym, (argv[2] || 'YML_importer.yml'), argv[3].to_i
    end
  end
end