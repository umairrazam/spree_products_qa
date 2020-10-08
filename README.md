SpreeProductsQA
===============
[![Build Status](https://travis-ci.org/netguru/spree_products_qa.png)](https://travis-ci.org/netguru/spree_products_qa)
[![Coverage Status](https://coveralls.io/repos/netguru/spree_products_qa/badge.png?branch=master)](https://coveralls.io/r/netguru/spree_products_qa?branch=master)
[![Code Climate](https://codeclimate.com/github/netguru/spree_products_qa.png)](https://codeclimate.com/github/netguru/spree_products_qa)

This extension adds Q&A Sections for products. Logged in users can ask a question, and then admins are able to answer it.
All answered (and accepted) questions are displayed on a product page.

This project is a fork of [spree_product_qa](https://github.com/netguru/spree_products_qa) by Netguru.
This is being actively maintained by [Truemark Technology](https://www.truemark.dev) to support spree 4.0 and later versions.

How does it work?
-------------
Install this extension and edit any product.
While editing product, there's now a new section in the submenu - Questions and Answers.
In this panel you can add or answer any question. Simple enough? :)

TODO:
- [] Setup Ability so that user can see the product questions before admin approved

Installation
------------

Add spree_products_qa to your Gemfile:

```ruby
gem 'spree_products_qa', git: 'https://github.com/TruemarkDev//spree_products_qa.git', branch: 'v2020'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_products_qa:install
```

Additional info
---------------
Currently supported Spree version: 4.x.x+

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

Copyright (c) 2014 [Netguru](https://netguru.co), released under the New BSD License.
