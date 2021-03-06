require "vmaps/mapping"

module Vmaps
  class Parser
    def initialize source
      @source = source.split("\n")
    end

    def parse_to_mappings
      mappings = Array.new
      mapping = Mapping.new
      @source.each do |line|
        if line[0] == "\t"
          mapping.set_from = line.sub("\tLast set from ", '')
          mappings << mapping
          mapping = Mapping.new
        else
          mapping.mode = line[0..2].strip
          mapping.mode = 'nvxso' if mapping.mode.empty?
          parts = line[3..-1].split(' ')

          mapping.lhs = parts.shift
          if parts.first.start_with?('*', '&', '@')
            mapping.special = parts.shift
          end
          mapping.rhs = parts.join()
        end
      end
      return mappings
    end
  end
end
