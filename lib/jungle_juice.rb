require 'pathname'

module JungleJuice
  extend self

  def root
    Pathname.new(File.expand_path("~"))
  end
end

require 'jungle_juice/path'

include JungleJuice
