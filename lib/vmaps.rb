require "vmaps/version"
require "vmaps/parser"

module Vmaps
  class Main
    def initialize
      mappings_source = get_mappings_source()

      @parser = Parser.new(mappings_source)
      mappings = @parser.parse_to_mappings()

      puts mappings
    end

    def generate_mappings_file
      system("vim +'redir! > map.txt' +'silent verbose map' +'redir END' +q")
    end

    private

    def get_mappings_source
      File.open('map.txt', 'r').read.split("\n").reject! { |l| l.empty? }
    end
  end
end
