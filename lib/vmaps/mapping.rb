module Vmaps
  class Mapping
    attr_accessor :mode, :lhs, :set_from, :rhs, :special

    def to_s
      "#{@lhs}\n  #{@rhs}\n  #{@mode}\n  #{@set_from}\n\n"
    end
  end
end
