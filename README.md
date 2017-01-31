# validates_phone_format_of

[![Gem Version](https://badge.fury.io/rb/validates_phone_format_of.svg)](http://badge.fury.io/rb/validates_phone_format_of)

Validate phone numbers against E.164 format.

## Installation

validates_phone_format_of is distributed as a gem, which is how it should be used in your app.

Include the gem in your Gemfile:

    gem 'validates_phone_format_of', '~> 1.0'

## Usage

In your model

```ruby
class User < ActiveRecord::Base

	validates :phone, phone_format: true
	# Or
	validates_phone_format_of :phone

end
```

## Author

- [Jonathan Tribouharet](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johntribouharet))

## License

validates_phone_format_of is released under the MIT license. See the LICENSE file for more info.
