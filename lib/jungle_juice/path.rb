module JungleJuice
  class Path
    def self.to
      Path.new
    end

    def initialize
      @current_dir = JungleJuice.root
    end

    def method_missing(method_name)
      @current_dir = @current_dir.join(method_name)
      self
    end

    def[](end_file_name)
      @current_dir.join(end_file_name.to_s)
    end
  end
end
