# Module comment
module TestModule

  # Class comment
  class TestClass

    # Attr Reader Comment
    attr_reader :some_attr

    # Method comment
    # Several lines
    #
    #   With indented example
    #   as if it is code
    def some_method(with:, args:)
    end
  end
end

# pp GetComments::Read.from 'dev/test.rb'
