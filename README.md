# Sagekit

Sagekit is a ruby gem client library to talk with Sage300 API.

The Sage 300 Web API makes it easier to create services that integrate with Sage 300 data and business logic. The Web API improves on existing tools for third-party integrations without requiring in-depth understanding of the Sage 300 View protocol and components.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sagekit'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install sagekit

```

## Usage

Make sure you have Sage300 web services up and runing. Web service is an easy way to communicate with 3rd party application without hampering the existing system & this is the reason we will always suggest to go for web service integration, whenever any customer requires integration.

Initialize client to make requets:

``` ruby
require 'sagekit'
client = Sagekit::Client.new(URL, AUTH)
client.sales_orders.list(COMPANY, '$top':10)
```

Make sure to change:
- URL with the web serive url, ex: http://10.255.6.60/Sage300WebApi/v1.0/-/
- AUTH with the Basic authentication key
- COMPANY with teh company id

## Resources

The gem maps as closely as possible to the Sage300 API so you can easily convert API examples to gem code.   
Responses are created as objects like. They're built using OpenStruct so you can easily access data in a Ruby-ish way.

### AR

#### Customers

``` ruby
client.customers.list('COMPANY')
client.customers.retreive('COMPANY', 'NUMBER')
client.customers.create('COMPANY', CustomerNumber: 'Number', CustomerName: 'Name', GroupCode: 'US')
client.customers.update('COMPANY', GroupCode: 'EXPORT')
client.customers.delete('COMPANY', 'NUMBER')
```

### IC

#### Items

``` ruby
client.items.list('COMPANY')
client.items.retreive('COMPANY', 'NUMBER')
client.items.create('COMPANY', ItemNumber: 'Number', Description: 'Description', Category: 'Category')
client.items.update('COMPANY', GroupCode: 'EXPORT')
client.items.delete('COMPANY', 'NUMBER')
```

#### Locations

``` ruby
client.locations.list('COMPANY')
client.locations.retreive('COMPANY', 'LOC_KEY')
client.locations.create('COMPANY', LocationKey: 'LocKey', Name: 'Name', City: 'Broward')
client.locations.update('COMPANY', City: 'Miami')
client.locations.delete('COMPANY', 'NUMBER')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lepepe/sagekit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/lepepe/sagekit/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Sagekit project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lepepe/sagekit/blob/master/CODE_OF_CONDUCT.md).
