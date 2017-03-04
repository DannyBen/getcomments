module GetComments
  class Read
    attr_reader :filename
    attr_accessor :comment_index

    def self.from(filename)
      new(filename).get
    end

    def initialize(filename)
      @filename = filename
      @comment_index = 0
    end

    def get
      last_comment = []
      result = {}

      lines.each do |line|
        line.strip!

        if line[0] == '#'
          last_comment << line.gsub(/^# ?/, '')
        elsif !last_comment.empty?
          result[get_key line] = last_comment.join("\n")
          last_comment = []
        end
      end

      unless last_comment.empty?
        result[get_key] = last_comment.join("\n")
      end

      result
    end

    private

    def lines
      @lines ||= File.readlines filename
    end

    def get_key(line='')
      if match = line.match(/^([\w_]+ [\w\:]+)/)
        match.captures.first
      else
        self.comment_index += 1
        "comment_#{comment_index}"
      end
    end
  end
end