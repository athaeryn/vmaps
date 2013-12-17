require "vmaps/version"

module Vmaps
  class Main
    def initialize
      generate_mappings_file()
    end

    def generate_mappings_file
      system "vim +'redir! > mappings.txt' +'silent verbose map' +'redir END' +q"
    end
  end
end
