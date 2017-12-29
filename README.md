GetComments - Extract Comments from Ruby Code
==================================================

[![Gem](https://img.shields.io/gem/v/getcomments.svg?style=flat-square)](https://rubygems.org/gems/getcomments)
[![Build](https://img.shields.io/travis/DannyBen/getcomments.svg?style=flat-square)](https://travis-ci.org/DannyBen/getcomments)
[![Dependencies](https://img.shields.io/gemnasium/DannyBen/getcomments.svg?style=flat-square)](https://gemnasium.com/DannyBen/getcomments)
[![Code Quality](https://img.shields.io/codacy/grade/f3205b547dbd4b4ea1e7825fe4ec136c.svg?style=flat-square)](https://www.codacy.com/app/db/runfile)
[![Maintainability](https://img.shields.io/codeclimate/maintainability/DannyBen/getcomments.svg?style=flat-square)](https://codeclimate.com/github/DannyBen/getcomments)
[![Issues](https://img.shields.io/codeclimate/issues/github/DannyBen/getcomments.svg?style=flat-square)](https://codeclimate.com/github/DannyBen/getcomments)

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