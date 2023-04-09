module GetComments
  class Code
    attr_reader :code, :comment_index

    def initialize(code)
      @code = code
      @comment_index = 0
    end

    def comments
      @comments ||= comments!
    end

  private

    def comments!
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

    def lines
      @lines ||= code.lines
    end

    def get_key(line = '')
      if (match = line.match(/^([\w_]+ [\w:]+)/))
        match.captures.first
      else
        @comment_index += 1
        "comment_#{comment_index}"
      end
    end
  end
end
