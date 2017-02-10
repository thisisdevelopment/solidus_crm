SolidusCrm
==========

[![Build Status](https://travis-ci.org/madetech/solidus_crm.svg?branch=master)](https://travis-ci.org/madetech/solidus_crm)

============

Installation
------------

Add solidus_crm to your Gemfile:

```ruby
gem 'solidus_crm'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_crm:install
```

Configuration
-------------
The default values for `crm_endpoint`, `crm_request_headers`, `crm_order_emitter_class`, `crm_shipment_emitter_class` and are preferences which are by default are set to:

| Preference                   | Default                    |
|------------------------------|----------------------------|
| `crm_endpoint`               | `''`                       |
| `crm_request_headers`        | `{}`                       |
| `crm_order_emitter_class`    | SolidusCrm::Event::Order   |
| `crm_shipment_emitter_class` | SolidusCrm::Event::Order   |
| `deliver_mailers_class`      | SolidusCrm::DeliverMailers |

To override these defaults set them in `config/initializers/spree.rb` e.g.

```ruby
Spree::CrmConfig[:endpoint] = 'https://www.my-super-crm.com'
```

Setting the endpoint is required.

SolidusCrm::DeliverMailers returns true.

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_crm/factories'
```

Copyright (c) 2016 [Made Tech](https://www.madetech.com), released under the New BSD License

