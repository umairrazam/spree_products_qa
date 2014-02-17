SpreeProductsQA
===============
[![Build Status](https://travis-ci.org/netguru/spree_products_qa.png)](https://travis-ci.org/netguru/spree_products_qa)
[![Coverage Status](https://coveralls.io/repos/netguru/spree_products_qa/badge.png?branch=master)](https://coveralls.io/r/netguru/spree_products_qa?branch=master)
[![Code Climate](https://codeclimate.com/github/netguru/spree_products_qa.png)](https://codeclimate.com/github/netguru/spree_products_qa)

This extension adds Q&A Sections for products. Logged users can ask a question, and than admins are able to answer it.
All answered(and accepted) questions are displayed on product page.

How it works?
-------------
Install this extenstion than edit any product.
While editing product, there's now new section in submenu - Questions and Answers.
In this panel you can add or answer any question. Simple enough? :)

Installation
------------

Add spree_products_qa to your Gemfile:

```ruby
gem 'spree_products_qa', git: 'https://github.com/netguru/spree_products_qa/', branch: '2-1-stable'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_products_qa:install
```

Additional info
---------------
Currently supported Spree version: 2.1.X

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_products_qa/factories'
```

Copyright (c) 2014 [Netguru](http://netguru.co), released under the New BSD License
