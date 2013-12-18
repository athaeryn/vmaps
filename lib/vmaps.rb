require "vmaps/version"
require "vmaps/parser"
require "json"

module Vmaps
  class Main
    def initialize(source=nil)
      if source == nil
        puts "No source given."
        exit 1
      end
      parser = Parser.new(source)

      @mappings = parser.parse_to_mappings()
    end

    def output_json
      puts JSON.dump @mappings
    end
  end
end
