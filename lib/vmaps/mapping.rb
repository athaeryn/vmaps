require "json"

module Vmaps
  class Mapping
    attr_accessor :mode, :lhs, :set_from, :rhs, :special

    def to_s
      "#{@lhs}\n  #{@rhs}\n  #{@mode}\n  #{@set_from}\n\n"
    end

    def to_json(wat)
      {
        mode: @mode,
        lhs:  @lhs,
        rhs:  @rhs,
        set_from: @set_from,
        special:  @special
      }.to_json
    end
  end
end
