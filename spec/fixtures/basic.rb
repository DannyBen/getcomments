# Module comment
module TestModule
  # Class comment
  class TestClass
    # Attribute comment
    attr_reader :some_attr

    # Method comment
    # Several lines
    #
    #   With indented example
    #   as if it is code
    def some_method(with:, args:)
      # Floating comment
    end

    # Method comment
    def another_method; end

    # Another floating comment
  end
end

# EOF comment
