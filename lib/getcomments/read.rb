module GetComments
  class Read
    attr_reader :filename

    def self.from(filename)
      new(filename).get
    end

    def initialize(filename)
      @filename = filename
    end

    def get
      last_comment = []
      result = {}

      lines.each do |line|
        line.strip!

        if line[0] == '#'
          last_comment << line.gsub(/^# ?/, '')
        elsif !last_comment.empty?
          key = get_key line
          result[key] = last_comment.join("\n") if key
          last_comment = []
        end
      end

      result
    end

    private

    def lines
      @lines ||= File.readlines filename
    end

    def get_key(line)
      key = nil

      if match = line.match(/^([\w_]+ [\w\:]+)/)
        key = match.captures.first
      end

      key
    end
  end
end