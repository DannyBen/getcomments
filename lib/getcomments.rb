require 'getcomments/version'
require 'getcomments/code'

module GetComments
  def self.from_file(filename)
    from_string(File.read filename)
  end

  def self.from_string(code)
    Code.new(code).comments
  end
end
