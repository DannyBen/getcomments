GetComments - Extract Comments from Ruby Code
==================================================

[![Gem Version](https://badge.fury.io/rb/getcomments.svg)](https://badge.fury.io/rb/getcomments)
[![Build Status](https://travis-ci.com/DannyBen/getcomments.svg?branch=master)](https://travis-ci.com/DannyBen/getcomments)
[![Maintainability](https://api.codeclimate.com/v1/badges/bcf41ae9f2c8ebd59f4d/maintainability)](https://codeclimate.com/github/DannyBen/getcomments/maintainability)

---

This library provides an easy way to extract comments from a ruby source file.

---


Install
--------------------------------------------------

```
$ gem install getcomments
```

Or with bundler:

```
gem 'getcomments'
```


Usage
--------------------------------------------------

Get comments from a file:

```ruby
# GetComments.from_file
require 'getcomments'
comments = GetComments.from_file 'spec/fixtures/minimal.rb'
comments.each do |key, value|
  puts "#{key}: #{value}"
end

#=> module TestModule: Module comment
#=> class TestClass: Class comment
#=> attr_reader :some_attr: Attribute comment
#=> def some_method: Method comment
```

Get comments from a string:

```ruby
# GetComments.from_string
code = <<-EOF
  # This function just sits here
  def the_function
  end
EOF

comments = GetComments.from_string code
comments.each do |key, value|
  puts "#{key}: #{value}"
end

#=> def the_function: This function just sits here
```