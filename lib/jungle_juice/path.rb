module JungleJuice
  class Path
    def self.to
      Path.new
    end

    def initialize
      @current_dir = JungleJuice.root
    end

    def method_missing(method_name)
      @current_dir = @current_dir.join(method_name.to_s)
      self
    end

    def[](file_name)
      @current_dir = @current_dir.join(file_name.to_s)
      self
    end

    def to_s
      @current_dir.to_s
    end
  end
end
