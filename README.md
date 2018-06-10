GetComments - Extract Comments from Ruby Code
==================================================

[![Gem Version](https://badge.fury.io/rb/getcomments.svg)](https://badge.fury.io/rb/getcomments)
[![Build Status](https://travis-ci.com/DannyBen/getcomments.svg?branch=master)](https://travis-ci.com/DannyBen/getcomments)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/55cf6df171234931b1781db7921ff68e)](https://www.codacy.com/app/db/runfile?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=DannyBen/runfile&amp;utm_campaign=Badge_Grade)
[![Maintainability](https://api.codeclimate.com/v1/badges/bcf41ae9f2c8ebd59f4d/maintainability)](https://codeclimate.com/github/DannyBen/getcomments/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/bcf41ae9f2c8ebd59f4d/test_coverage)](https://codeclimate.com/github/DannyBen/getcomments/test_coverage)

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