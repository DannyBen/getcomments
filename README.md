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

```ruby
gem 'getcomments'
```


Usage
--------------------------------------------------

```ruby
require 'getcomments'
comments = GetComments::Read.from 'filename.rb'
p comments

# => {
#      "module TestModule" => "This is the module comment",
#      "class TestClass"   => "This is the class comment",
#      "def some_method"   => "This is a multiline\nmethod comment"
#    }

```